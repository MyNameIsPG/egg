'use strict';
const Service = require('egg').Service;

class UserService extends Service {
  async query() {
    const results = await this.app.mysql.select('tb_users');
    return results;
  }
  async add(data) {
    const results = await this.app.mysql.insert('tb_users', data);
    return results;
  }
  async update(data, options) {
    const results = await this.app.mysql.update('tb_users', data, options);
    return results;
  }
}

module.exports = UserService;
