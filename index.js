const express = require('express');
const app = express();

app.use(express.json());


const ControllerUsers = require('./controllers/ControllerUsers');

//USUARIOS
app.post('/usuario/insert',   ControllerUsers.insert);

app.get('/usuario/select',   ControllerUsers.select);

app.put('/usuario/update/:id',   ControllerUsers.update);

app.get('/usuario',   ControllerUsers.findAll);

app.get('/usuario/:id',   ControllerUsers.findById);

app.delete('/usuario/:id',   ControllerUsers.delete);


const ControllerProdutos = require('./controllers/ControllerPordutos');
// Produtos
app.post('/produto/insert', ControllerProdutos.insert);
app.get('/produto/select', ControllerProdutos.select);
app.put('/produto/update/:idProduto', ControllerProdutos.update);





const PORT = process.env.PORT || 8089;
app.listen(PORT, () => {
    console.log(`API RODANDO NA PORTA ${PORT}`);
})

