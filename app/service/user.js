'use strict';
const Service = require('egg').Service;

class UserService extends Service {
  async query() {
    const results = await this.app.mysql.select('tb_user');
    return results;
  }
  async add(data) {
    const results = await this.app.mysql.insert('tb_user', data);
    return results;
  }
  async update(data, options) {
    const results = await this.app.mysql.update('tb_user', data, options);
    return results;
  }
}

module.exports = UserService;
