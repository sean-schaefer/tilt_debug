const messageJSON = require('/usr/src/common/src/message.json')

console.log('Common message: ', messageJSON.key)
setTimeout(() => console.log('exiting..'), 10000000)