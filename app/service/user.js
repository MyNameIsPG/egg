'use strict';
const Service = require('egg').Service;
const CONSTANT = require('../utils/constant')

class UserService extends Service {
  async login (data) {
    let sessuce = await this.app.mysql.get('tb_users', data);
    let mobile = await this.app.mysql.get('tb_users', { mobile: data.mobile });
    let password = await this.app.mysql.get('tb_users', { password: data.password });
    if (sessuce) {
      return {
        msg: CONSTANT.LOGINMSG,
        code: CONSTANT.OKCODE,
        data: sessuce
      }
    } else if (mobile == null && password != null) {
      return {
        msg: CONSTANT.ACCOUNTERROR,
        code: CONSTANT.FAILCODE
      }
    } else if (password == null && mobile != null) {
      return {
        msg: CONSTANT.PASSWORDERROR,
        code: CONSTANT.FAILCODE
      }
    } else {
      return {
        msg: CONSTANT.ACCOUNTDOESNOTEXIST,
        code: CONSTANT.FAILCODE
      }
    }
  }
  async query () {
    return await this.app.mysql.select('tb_users');
  }
  async add (data) {
    return await this.app.mysql.insert('tb_users', data);
  }
  async update (data, options) {
    return await this.app.mysql.update('tb_users', data, options);
  }
}

module.exports = UserService;
