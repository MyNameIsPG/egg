const CONSTANT = require('./constant.js')

let results = {
  querySuccess: (data) => {
    return {
      msg: CONSTANT.QUERYMSG,
      code: CONSTANT.OKCODE,
      data: data
    }
  },
  addSuccess: (data) => {
    return {
      msg: CONSTANT.PRESERVEMASG,
      code: CONSTANT.OKCODE,
      data: data
    }
  },
  updateSuccess: (data) => {
    return {
      msg: CONSTANT.UPDATEMSG,
      code: CONSTANT.OKCODE,
      data: data
    }
  },
  deleteSuccess: (data) => {
    return {
      msg: CONSTANT.DELETEMSG,
      code: CONSTANT.OKCODE,
      data: data
    }
  },
  errer: () => {
    return {
      msg: CONSTANT.SYSTEMEXCEPTION,
      code: CONSTANT.FAILCODE
    }
  },
  uuidErrer: () => {
    return {
      msg: CONSTANT.UUIDEMPTY,
      code: CONSTANT.FAILCODE
    }
  }
}

module.exports = results