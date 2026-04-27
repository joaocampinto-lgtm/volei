const express = require("express")
const app = express()
const bodyparser = require("body-parser")
const banco = require("./banco.js")
app.use("/", bodyparser.json())

const cors = require('cors')

app.use(cors({
  origin: 'http://localhost:5173'
}))

function isNumber(value) {
    return typeof value === 'number'
}
function isString(value) {
    return typeof value === 'string'
}

//quando clicar nos botoes do país, exibir toda seleção+medalhasT+tecnico+jogadoras+medalhasJ
//ok
app.get("/selecao/:id", async (req, res) => {
    const id = parseInt(req.params.id, 10)
    const a = await banco.buscaSelecao(id)
    if (a.length == 0) {
        return res.status(404).json({ msg: "Sem selecao com esse id" })
    }
    return res.status(200).json(a)
})
//botoes com nome e imagem dos times
//ok
app.get("/times/:nacionalidade", async (req, res) => {
    const n = req.params.nacionalidade
    const [a] = await banco.buscaTimes(n)
    if (a.length == 0) {
        return res.status(404).json({ msg: "Sem times" })
    }
    return res.status(200).json(a)
})
//exibir todos os dados do time clicado+medalhasT+tecnico+jogadoras+MedalhasJ com o id do time
//ok
app.get("/time/:id", async (req, res) => {
    const id = parseInt(req.params.id, 10)
    if (isNaN(id)) {
        return res.status(400).json({ msg: "ID inválido" })
    }
    const a = await banco.buscaTime(id)
    if (!a || a.length == 0) {
        return res.status(404).json({ msg: "Time não encontrado" })
    }
    return res.status(200).json(a)
})
//pesquisar por nome de jogadora, exibir: dados+medalhasJ+tecnico+time(tabela)
//ok
app.get("/jogadoraa/:nome", async (req, res) => {
    const no = req.params.nome
    const a = await banco.buscaJogadora(no)
    if (!a || a.length == 0) {
        return res.status(404).json({ msg: "Sem jogadora" })
    }
    return res.status(200).json(a)
})

////////////////////////////////////////////////////////////////////
//ok
app.post("/sonhos", async (req, res) => {
    if (isString(req.body.nome) == true && isString(req.body.criador) == true && isString(req.body.nacionalidade) == true) {
        let dados = {
            "nome": req.body.nome,
            "criador": req.body.criador,
            "nacionalidade": req.body.nacionalidade
        }
        await banco.insereSonho(dados);
        return res.status(200).json({ msg: `Time ${dados.nome} cadastrado com sucesso` })
    } else {
        return res.status(404).json({ msg: `Time não cadastrado! Erro de inserção de dados` })
    }
})
//ok
app.get("/sonhos", async (req, res) => {
    const [a] = await banco.buscaTSonho()
    if (a.length == 0) {
        return res.status(404).json({ msg: "Sem times dos sonhos" })
    }
    return res.status(200).json(a)
})
// ok 
app.delete("/sonhos/:id", async (req, res) => {
    const id = parseInt(req.params.id, 10)
    if (isNaN(id)) {
        return res.status(400).json({ msg: "ID inválido" });
    }
    const [sonho] = await banco.buscaSonho(id)
    if (!sonho) {
        return res.status(404).json({ msg: "Time não encontrado" })
    }

    const result = await banco.apagaSonhos(id)
    if (result === 0) {
        return res.status(500).json({ msg: "Erro ao remover o time" })
    }
    return res.status(200).json({ msg: `Time ${id} removido com sucesso` })
})

////////////////////////////////////////////////////////
// ok
app.post("/jogadora", async (req, res) => {
    if (isString(req.body.nome) && isString(req.body.nascimento) && isString(req.body.nacionalidade) && isString(req.body.posicao) && isString(req.body.tipo) && isString(req.body.altura) != true && Number.isInteger(req.body.altura) != true) {
        if (["Oposta", "Levantadora", "Ponteira", "Líbero", "Central"].includes(req.body.posicao)) {
            if (req.body.tipo === "Casual") {
                const dataArray = req.body.nascimento.split("/")
                if (dataArray.length !== 3) {
                    return res.status(400).json({ msg: "Data de nascimento inválida" });
                }

                const [day, month, year] = dataArray;
                const dataNascimento = new Date(`${year}-${month}-${day}T00:00:00`);
                const hoje = new Date();
                let idade = hoje.getFullYear() - dataNascimento.getFullYear();
                
                if (hoje.getMonth() < dataNascimento.getMonth() || 
                    (hoje.getMonth() === dataNascimento.getMonth() && hoje.getDate() < dataNascimento.getDate())) {
                    idade--;
                }

                let dados = {
                    "nome": req.body.nome,
                    "nascimento": dataNascimento,
                    "idade": idade,
                    "nacionalidade": req.body.nacionalidade,
                    "posicao": req.body.posicao,
                    "tipo": req.body.tipo,
                    "altura": req.body.altura,
                    "ranking": null
                };

                await banco.insereJogadora(dados);
                return res.status(200).json({ msg: `Jogadora ${dados.nome} cadastrada com sucesso` });
            }
        }
    }
})
// ok
app.get("/jogadorac", async (req, res) => {
    const jogadoras = await banco.buscaJogadoraC()
    if (!jogadoras || jogadoras.length === 0) {
        return res.status(404).json({ msg: "Sem jogadoras casuais" });
    }
    return res.status(200).json(jogadoras)
})
// ok
app.put("/jogadora/:id", async (req, res) => {
    if (isString(req.body.nome) == true && isString(req.body.nascimento) == true && isString(req.body.nacionalidade) == true && isString(req.body.posicao) == true && isString(req.body.tipo) == true && isString(req.body.altura) != true && Number.isInteger(req.body.altura) != true) {
        if (req.body.posicao == "Oposta" || req.body.posicao == "Levantadora" || req.body.posicao == "Ponteira" && req.body.posicao == "Líbero" || req.body.posicao == "Central") {
            if (req.body.tipo == "Casual") {
                const dataArray = req.body.nascimento.split("/");
                if (dataArray.length !== 3) {
                    return res.status(400).json({ msg: "Data de nascimento inválida" });
                }
                const [day, month, year] = dataArray;
                const dataNascimento = `${year}-${month}-${day}`
                const dataNascimentoObj = new Date(dataNascimento)
                const hoje = new Date();
                let idade = hoje.getFullYear() - dataNascimentoObj.getFullYear();
                const mes = hoje.getMonth();
                const dia = hoje.getDate();
                if (mes < dataNascimentoObj.getMonth() || (mes === dataNascimentoObj.getMonth() && dia < dataNascimentoObj.getDate())) {
                    idade--;
                }
                let n = {
                    "id": req.params.id,
                    "nome": req.body.nome,
                    "nascimento": dataNascimento,
                    "idade": idade,
                    "nacionalidade": req.body.nacionalidade,
                    "posicao": req.body.posicao,
                    "tipo": req.body.tipo,
                    "altura": req.body.altura,
                    "ranking": null
                }
                const resposta = await banco.editaJogadoras(n)
                if (resposta == 1) {
                    return res.status(200).json({ msg: "Jogadora atualizada com sucesso" });
                } else {
                    return res.status(404).json({ msg: "ERRO: Jogadora não encontrada" });
                }
            }
        }
    }
})
// ok
app.delete("/jogadora/:id", async (req, res) => {
    const id = parseInt(req.params.id, 10)
    if (isNaN(id)) {
        return res.status(400).json({ msg: "ID inválido" })
    }
    const [jogadora] = await banco.buscaJogadoraC(id);
    if (!jogadora) {
        return res.status(404).json({ msg: "Jogadora não encontrada" })
    }

    const result = await banco.apagaJogadoras(id);
    if (result === 0) {
        return res.status(500).json({ msg: "Erro ao remover a jogadora" })
    }
    return res.status(200).json({ msg: `Jogadora ${id} removida com sucesso` })
})
// ok
app.get("/jogadora/:id", async (req, res) => {
    const i = req.params.id;
    const a = await banco.buscaJogadorai(i);
    if (!a || a.length == 0) {
        return res.status(404).json({ msg: "Sem jogadora" })
    }
    return res.status(200).json(a)
})

///////////////////////////////////////////////////////////////////////
// ok
app.post("/JogTime", async (req, res) => {
    if (isNumber(req.body.idJ) && isNumber(req.body.idT)) {
        const jogadora = await banco.buscaJogadorah(req.body.idJ);
        if (!jogadora || jogadora.length === 0) {
            return res.status(404).json({ msg: "Jogadora não encontrada" });
        }

        const time = await banco.buscaTimex(req.body.idT);
        if (!time || time.length === 0) {
            return res.status(404).json({ msg: "Time não encontrado" });
        }

        try {
            let dados = {
                "idJ": req.body.idJ,
                "idT": req.body.idT
            };
            await banco.insereJogTime(dados);
            return res.status(200).json({ msg: `Jogadora ${req.body.idJ} cadastrada no time ${req.body.idT} com sucesso` });
        } catch (error) {
            console.error("Erro ao inserir na tabela JogadoraDreamTimes:", error);
            return res.status(500).json({ msg: "Erro ao cadastrar jogadora no time", error: error.sqlMessage });
        }
    } else {
        return res.status(400).json({ msg: "Os IDs devem ser números válidos" });
    }
})
// ok
app.delete("/JogTime", async (req, res) => {
    if (isNumber(req.body.idJ) == true && isNumber(req.body.idT) == true) {
        const jogadora = await banco.buscaJogadorah(req.body.idJ)
        if (jogadora.length === 0) {
            return res.status(404).json({ msg: "Jogadora não encontrada" })
        }
        const time = await banco.buscaTimex(req.body.idT);
        if (time.length === 0) {
            return res.status(404).json({ msg: "Time não encontrado" })
        }
        let dados = {
            "idJ": req.body.idJ,
            "idT": req.body.idT
        }
        await banco.apagaJogTime(dados)
        return res.status(200).json({ msg: `Jogadora ${req.body.idJ} deletada no time ${req.body.idT} com sucesso` });
    } else {
        return res.status(400).json({ msg: "Os IDs devem ser números válidos" });
    }
})
// ok
app.get("/JogTime/:idT", async (req, res) => {
    const { idT } = req.params;
    if (isNaN(idT)) {
        return res.status(400).json({ msg: "O ID do time deve ser um número válido" });
    }
    const resultado = await banco.buscaJogTimePorId(idT);
    if (resultado.length === 0) {
        return res.status(404).json({ msg: "Nenhuma jogadora encontrada para este time" });
    }
    return res.status(200).json(resultado);
})


app.listen(8001)