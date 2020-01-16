'use strict';
const Controller = require('egg').Controller;
const uuidv4 = require('uuid/v4');
const results = require('../utils/results')

class RoleController extends Controller {

  async queryAll () {
    const { ctx } = this;
    const params = {
      pageSize: ctx.request.body.pageSize,
      pageNum: ctx.request.body.pageNum,
      status: ctx.request.body.status ? ctx.request.body.status : 1,
      name: ctx.request.body.name ? ctx.request.body.name : null
    };
    const data = await ctx.service.roles.queryAll(params);
    if (data) {
      ctx.body = results.queryAllSuccess(data.list, data.total, data.pageSize, data.pageNum);
    } else {
      ctx.body = results.errer();
    }
  }

  async query () {
    const { ctx } = this;
    const params = ctx.request.body;
    const data = await ctx.service.roles.query(params);
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
      const data = await this.service.roles.queryOne(options);
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
      description: ctx.request.body.description,
      status: 1,
      create_time: new Date(),
      update_time: new Date(),
      create_user: ctx.request.header.auth
    };
    const data = await this.service.roles.add(params);
    if (data) {
      ctx.body = results.addSuccess(data);
    } else {
      ctx.body = results.errer();
    }
  }

  async update () {
    const { ctx } = this;
    if (ctx.request.body.uuid) {
      const params = {
        ...ctx.request.body,
        update_time: new Date(),
        create_user: ctx.request.header.auth
      };
      const options = {
        where: {
          uuid: ctx.request.body.uuid,
        },
      };
      const data = await this.service.roles.update(params, options);
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

module.exports = RoleController;