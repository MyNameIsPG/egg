'use strict';
const Controller = require('egg').Controller;
const uuidv4 = require('uuid/v4');
const md5 = require('md5');
const results = require('../utils/results')

class UserController extends Controller {

  async login () {
    const { ctx } = this;
    const params = {
      mobile: ctx.request.body.username,
      password: md5(ctx.request.body.password)
    }
    const data = await ctx.service.user.login(params);
    ctx.body = data
  }

  async query () {
    const { ctx } = this;
    const params = ctx.request.body;
    const data = await ctx.service.user.query(params);
    if (data) {
      ctx.body = results.querySuccess(data);
    } else {
      ctx.body = results.errer();
    }
  }

  async add () {
    const { ctx } = this;
    const params = {
      uuid: uuidv4(),
      name: ctx.request.body.name,
      head_pic: ctx.request.body.headPic,
      mobile: ctx.request.body.mobile,
      sex: ctx.request.body.sex,
      password: md5('123456'),
      status: 1,
      create_time: this.app.mysql.literals.now,
      update_time: this.app.mysql.literals.now,
      role_id: ctx.request.body.roleId
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
      let password;
      if (ctx.request.body.password) {
        password = md5(ctx.request.body.password);
      }
      const params = {
        name: ctx.request.body.name,
        sex: ctx.request.body.sex,
        phone: ctx.request.body.phone,
        email: ctx.request.body.email,
        head_picture: ctx.request.body.head_picture,
        flag: ctx.request.body.flag,
        update_time: this.app.mysql.literals.now,
        password,
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
