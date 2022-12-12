import express from 'express';
import logger from 'morgan';
import cors from 'cors';

const app = express();

app.use(logger('dev'));
app.use(cors());

app.get('/', (_, res) => {
  res.send({ data: 'SHEEEEESHSHHHHHH! say less' });
});

app.listen(process.env.PORT || 3000, () => {
  console.log('Server is running...');
});
