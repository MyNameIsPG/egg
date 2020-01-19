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
  async queryAll (data) {
    const totalNum = await this.app.mysql.query('SELECT COUNT(*) from tb_users');
    const name = data.name ? `AND u.name like "%${data.name}%"` : ''
    const sex = data.sex ? `AND u.sex = ${data.sex}` : ''
    const mobile = data.mobile ? `AND u.mobile like "%${data.mobile}%"` : ''
    const roleId = data.roleId ? `AND u.role_id = '${data.roleId}'` : ''
    const list = await this.app.mysql.query(`SELECT u.*, r.name AS roleName FROM tb_users u LEFT JOIN tb_roles r ON u.role_id = r.uuid WHERE u.status = ${data.status} ${name} ${sex} ${mobile} ${roleId} AND 1=1 ORDER BY create_time DESC LIMIT ${data.pageSize*data.pageNum}, ${data.pageSize}`)
    console.log('----tb_users----  ' + `SELECT u.*, r.name AS roleName FROM tb_users u LEFT JOIN tb_roles r ON u.role_id = r.uuid WHERE u.status = ${data.status} ${name} ${sex} ${mobile} ${roleId} AND 1=1 ORDER BY create_time DESC LIMIT ${data.pageSize*data.pageNum}, ${data.pageSize}`)
    const result = {
      list,
      total: totalNum[0]["COUNT(*)"],
      pageSize: data.pageSize,
      pageNum: data.pageNum
    }
    return result
  }
  async queryOne (options) {
    return await this.app.mysql.get('tb_users', options);
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
