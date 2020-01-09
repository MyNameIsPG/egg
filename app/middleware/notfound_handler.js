const CONSTANT = require('../utils/constant')

module.exports = () => {
  return async function notFoundHandler (ctx, next) {
    await next();
    if (ctx.status === 404 && !ctx.body) {
      if (ctx.acceptJSON) {
        ctx.body = { error: 'Not Found' };
      } else {
        ctx.body = {
          mag: CONSTANT.SYSTEMEXCEPTION,
          code: ctx.status
        }
      }
    }
  }
}