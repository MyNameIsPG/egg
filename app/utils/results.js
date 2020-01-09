const CONSTANT = require('./constant.js')

let results = {
  querySuccess: (data) => {
    return {
      mag: CONSTANT.QUERYMSG,
      code: CONSTANT.OKCODE,
      data: data
    }
  },
  addSuccess: (data) => {
    return {
      mag: CONSTANT.PRESERVEMASG,
      code: CONSTANT.OKCODE,
      data: data
    }
  },
  updateSuccess: (data) => {
    return {
      mag: CONSTANT.UPDATEMSG,
      code: CONSTANT.OKCODE,
      data: data
    }
  },
  deleteSuccess: (data) => {
    return {
      mag: CONSTANT.DELETEMSG,
      code: CONSTANT.OKCODE,
      data: data
    }
  },
  errer: () => {
    return {
      mag: CONSTANT.SYSTEMEXCEPTION,
      code: CONSTANT.FAILCODE
    }
  },
  uuidErrer: () => {
    return {
      mag: CONSTANT.UUIDEMPTY,
      code: CONSTANT.FAILCODE
    }
  }
}

module.exports = results