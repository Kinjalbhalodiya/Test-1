const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello World');
})

app.get('/products', (req, res) => {
  res.send('Welcome')
})

/* istanbul ignore next */
/*if (!module.parent) {*/
  app.listen(port, ()=> {
  console.log('Express started on port 3000');
})
