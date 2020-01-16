'use strict';
const Service = require('egg').Service;

class RoleService extends Service {
  async query () {
    return await this.app.mysql.select('tb_roles');
  }
  async add (data) {
    return await this.app.mysql.insert('tb_roles', data);
  }
  async update (data, options) {
    return await this.app.mysql.update('tb_roles', data, options);
  }
}

module.exports = RoleService;