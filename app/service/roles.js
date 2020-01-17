'use strict';
const Service = require('egg').Service;

class RoleService extends Service {
  async queryAll (data) {
    const totalNum = await this.app.mysql.query('SELECT COUNT(*) from tb_roles');
    const name = data.name ? `AND name like "%${data.name}%"` : ''
    const list = await this.app.mysql.query(`select * from tb_roles WHERE status = ${data.status} ${name} ORDER BY create_time DESC LIMIT ${data.pageNum * data.pageSize}, ${data.pageSize}`)
    console.log('----tb_roles----  ' + `select * from tb_roles WHERE status = ${data.status} ${name} ORDER BY create_time DESC LIMIT ${data.pageNum * data.pageSize}, ${data.pageSize}`)
    const result = {
      list,
      total: totalNum[0]["COUNT(*)"],
      pageSize: data.pageSize,
      pageNum: data.pageNum
    }
    return result
  }
  async query (data) {
    return await this.app.mysql.select('tb_roles', {
      where: { status: data.status }, // WHERE 条件
      orders: [['create_time', 'desc']] // 排序方式
    });
  }
  async add (data) {
    return await this.app.mysql.insert('tb_roles', data);
  }
  async update (data, options) {
    return await this.app.mysql.update('tb_roles', data, options);
  }
  async queryOne (options) {
    return await this.app.mysql.get('tb_roles', options);
  }
}

module.exports = RoleService;