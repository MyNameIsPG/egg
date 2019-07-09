'use strict';

const Controller = require('egg').Controller;

class NewsController extends Controller {
  async index() {
    const { ctx } = this;
    ctx.body = 'new';
  }
}

module.exports = NewsController;
