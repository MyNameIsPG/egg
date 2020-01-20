'use strict';
const Controller = require('egg').Controller;
const uuidv4 = require('uuid/v4');
const results = require('../utils/results')

class MenuController extends Controller {

  async tree () {
    const { ctx } = this;
    const params = {
      flag: ctx.request.body.flag ? ctx.request.body.flag : 1
    };
    const data = await ctx.service.meun.queryTree(params);
    if (data) {
      ctx.body = results.querySuccess(data);
    } else {
      ctx.body = results.errer();
    }
  }

  async queryAll () {
    const { ctx } = this;
    const params = {
      pageSize: ctx.request.body.pageSize,
      pageNum: ctx.request.body.pageNum,
      flag: ctx.request.body.flag ? ctx.request.body.flag : 1,
      name: ctx.request.body.name ? ctx.request.body.name : null
    };
    const data = await ctx.service.meun.queryAll(params);
    if (data) {
      ctx.body = results.queryAllSuccess(data.list, data.total, data.pageSize, data.pageNum);
    } else {
      ctx.body = results.errer();
    }
  }

  async query () {
    const { ctx } = this;
    const params = {
      status: ctx.request.body.status ? ctx.request.body.status : 1
    };
    const data = await ctx.service.meun.query(params);
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
      const data = await this.service.meun.queryOne(options);
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
      url: ctx.request.body.url,
      parent: ctx.request.body.parent,
      icon: ctx.request.body.icon,
      flag: 1,
      sort: ctx.request.body.sort,
      create_time: new Date(),
      update_time: new Date()
    };
    const data = await this.service.meun.add(params);
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
        update_time: new Date()
      };
      const options = {
        where: {
          uuid: ctx.request.body.uuid,
        },
      };
      const data = await this.service.meun.update(params, options);
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

module.exports = MenuController;