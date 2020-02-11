const CONSTANT = require('../utils/constant')
const jwt = require("jsonwebtoken");

module.exports = options => {
  return async function notFoundHandler (ctx, next) {
    const ignore = ctx.app.config.jwt.ignore;
    if (ignore) {
      ignore.map(item => {
        if (item != ctx.path) {
          const token = ctx.request.header.authorization;
          const secret = ctx.app.config.jwt.secret;
          if (token) {
            console.log(33333)
          } else {
            console.log('先进来token')
            ctx.status = 404;
            ctx.body = {
              message: CONSTANT.TOKENEMPTY,
              code: ctx.NO_LOGIN_CODE,
            }

          }
        }
      })
    }
    await next();
    // const token = ctx.request.header.authorization.replace("Bearer ", "");
    // const secret = ctx.app.config.jwt.secret;
    // console.log(token)
    // console.log(secret)
    // if (!token) {
    //   ctx.body = {
    //     mag: CONSTANT.TOKENEMPTY,
    //     code: ctx.status
    //   }
    // }
    // ctx.app.jwt.verify(token, secret, (error, decoded) => {
    //   console.log(error)
    //   if (error.message == 'invalid token') {
    //     ctx.body = {
    //       mag: CONSTANT.TOKENINVALID,
    //       code: ctx.status
    //     }
    //   }
    //   console.log(decoded)
    //   //await next();
    // })
  }
}