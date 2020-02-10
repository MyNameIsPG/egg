'use strict';
const Controller = require('egg').Controller;
const uuidv4 = require('uuid/v4');
const md5 = require('md5');
const results = require('../utils/results')

class UserController extends Controller {

  async login () {
    const { ctx, app } = this;
    const params = {
      mobile: ctx.request.body.username,
      password: md5(ctx.request.body.password)
    }
    const data = await ctx.service.user.login(params);
    const token = app.jwt.sign({
      userinfo: JSON.stringify(data.data), //需要存储的 token 数据
    }, app.config.jwt.secret, {
      expiresIn: 60 * 60,
    });
    data.token = token
    ctx.body = data
  }

  async queryAll () {
    const { ctx } = this;
    const params = {
      pageSize: ctx.request.body.pageSize,
      pageNum: ctx.request.body.pageNum,
      status: ctx.request.body.status ? ctx.request.body.status : 1,
      name: ctx.request.body.name ? ctx.request.body.name : null,
      sex: ctx.request.body.sex ? ctx.request.body.sex : null,
      mobile: ctx.request.body.mobile ? ctx.request.body.mobile : null,
      roleId: ctx.request.body.roleId ? ctx.request.body.roleId : null
    };
    const token = ctx.request.header.authorization;
    console.log(token)
    console.log(ctx.state.user);
    const data = await ctx.service.user.queryAll(params);
    if (data) {
      ctx.body = results.queryAllSuccess(data.list, data.total, data.pageSize, data.pageNum);
    } else {
      ctx.body = results.errer();
    }
  }

  async query () {
    const { ctx } = this;
    const token = ctx.request.header.authorization;
    const method = ctx.method.toLowerCase();
    console.log(token)
    console.log(method)
    const params = ctx.request.body;
    const data = await ctx.service.user.query(params);
    if (data) {
      ctx.body = results.querySuccess(data);
    } else {
      ctx.body = results.errer();
    }
  }

  async queryOne () {
    const { ctx } = this;
    if (ctx.request.body.uuid) {
      const options = {
        uuid: ctx.request.body.uuid
      };
      const data = await this.service.user.queryOne(options);
      if (data) {
        ctx.body = results.querySuccess(data);
      } else {
        ctx.body = results.errer();
      }
    } else {
      ctx.body = results.uuidErrer();
    }
  }

  async add () {
    const { ctx } = this;
    const params = {
      uuid: uuidv4(),
      name: ctx.request.body.name,
      head_pic: ctx.request.body.head_pic,
      mobile: ctx.request.body.mobile,
      sex: ctx.request.body.sex,
      password: md5('123456'),
      status: 1,
      create_time: this.app.mysql.literals.now,
      update_time: this.app.mysql.literals.now,
      role_id: ctx.request.body.role_id
    };
    const data = await this.service.user.add(params);
    if (data) {
      ctx.body = results.addSuccess(data);
    } else {
      ctx.body = results.errer();
    }
  }

  async update () {
    const { ctx } = this;
    if (ctx.request.body.uuid) {
      if (ctx.request.body.password) {
        ctx.request.body.password = md5(ctx.request.body.password);
      }
      const params = {
        ...ctx.request.body,
        update_time: new Date()
      };
      const options = {
        where: {
          uuid: ctx.request.body.uuid,
        },
      };
      const data = await this.service.user.update(params, options);
      if (data) {
        ctx.body = results.updateSuccess(data);
      } else {
        ctx.body = results.errer();
      }
    } else {
      ctx.body = results.uuidErrer();
    }
  }

}

module.exports = UserController;
