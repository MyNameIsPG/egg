const CONSTANT = require('../utils/constant')
const jwt = require("jsonwebtoken");

module.exports = options => {
  return async function notFoundHandler (ctx, next) {
    await next();
    const ignore = ctx.app.config.jwt.ignore;
    if (ignore) {
      ignore.map(item => {
        if (item != ctx.path) {
          const token = ctx.request.header.authorization;
          const secret = ctx.app.config.jwt.secret;
          if (token) {
            const authorization = token.replace("Bearer ", "");
            jwt.verify(authorization, secret, (error, decoded) => {
              if (error) {
                if (error.message === 'jwt expired') {
                  ctx.body = {
                    msg: CONSTANT.TOKENEXPIRED,
                    code: CONSTANT.FAILCODE
                  }
                }
                if (error.message === 'invalid token') {
                  ctx.body = {
                    msg: CONSTANT.TOKENINVALID,
                    code: CONSTANT.FAILCODE
                  }
                }
              }
            })
          } else {
            ctx.body = {
              msg: CONSTANT.TOKENEMPTY,
              code: CONSTANT.FAILCODE
            }
          }
        }
      })
    }
  }
}