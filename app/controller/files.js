'use strict';
const Controller = require('egg').Controller;
const path = require('path');
const fs = require('fs');
const dayjs = require('dayjs');
const uuidv4 = require('uuid/v4');

class FilesController extends Controller {

  async index () {
    let ctx = this.ctx;
    let uplaodBasePath = ctx.app.config.filePath;
    let fileUrl = ctx.app.config.fileUrl;
    let dirname = dayjs(Date.now()).format('YYYY/MM/DD');
    let files = ctx.request.files;
    let dataArr = [];
    if (files) {
      for (let file of ctx.request.files) {
        let filename = `${Date.now()}${Number.parseInt(Math.random() * 1000)}${path.extname(file.filename).toLocaleLowerCase()}`;
        let fileList = fs.readFileSync(file.filepath);
        mkdirsSync(path.join(uplaodBasePath, '', dirname));
        function mkdirsSync (dirname) {
          if (fs.existsSync(dirname)) {
            return true;
          } else {
            if (mkdirsSync(path.dirname(dirname))) {
              fs.mkdirSync(dirname);
              return true;
            }
          }
        }
        let target = path.join(uplaodBasePath, '', dirname, filename);
        let data = {
          uuid: uuidv4(),
          owner_id: '',
          create_id: '',
          name: file.filename,
          path: target,
          url: fileUrl + dirname + '/' + filename,
          status: 1,
          create_time: new Date()
        };
        let results = await this.service.files.add(data);
        dataArr.push(data)
        if (results) {
          fs.writeFileSync(target, fileList);
          ctx.body = {
            mag: '上传成功',
            code: 1,
            data: dataArr
          }
        } else {
          fs.unlink(file.filepath);
        }
      }
    } else {
      ctx.body = {
        mag: '请上传文件',
        code: 0
      }
    }
  }

}

module.exports = FilesController;