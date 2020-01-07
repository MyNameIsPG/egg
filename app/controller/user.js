'use strict';
const uuidv4 = require('uuid/v4');
const md5 = require('md5');
const Controller = require('egg').Controller;

class UserController extends Controller {

  async query() {
    const { ctx } = this;
    const query = ctx.request.body;
    const results = await ctx.service.user.query(query);
    if (results) {
      ctx.body = {
        mag: '成功！',
        code: 1,
        data: results
      };
    } else {
      ctx.body = {
        mag: '失败！',
        code: 0,
      };
    }
  }

  async add() {
    const { ctx } = this;
    const data = {
      uuid: uuidv4(),
      name: ctx.request.body.name,
      sex: ctx.request.body.sex,
      phone: ctx.request.body.phone,
      email: ctx.request.body.email,
      head_picture: ctx.request.body.head_picture,
      flag: 1,
      create_time: this.app.mysql.literals.now,
      update_time: this.app.mysql.literals.now,
      password: md5('123456'),
    };
    const results = await this.service.user.add(data);
    if (results) {
      this.ctx.body = {
        mag: '成功！',
        code: 1,
      };
    } else {
      this.ctx.body = {
        mag: '失败！',
        code: 0,
      };
    }
  }

  async update() {
    const { ctx } = this;
    if (ctx.request.body.uuid) {
      let password;
      if (ctx.request.body.password) {
        password = md5(ctx.request.body.password);
      }
      const data = {
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
      const results = await this.service.user.update(data, options);
      if (results) {
        this.ctx.body = {
          mag: '成功！',
          code: 1,
        };
      } else {
        this.ctx.body = {
          mag: '失败！',
          code: 0,
        };
      }
    } else {
      this.ctx.body = {
        mag: 'uuid不能为空',
        code: 0,
      };
    }
  }

}

module.exports = UserController;
