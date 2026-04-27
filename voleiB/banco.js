const bd = require("mysql2/promise")

const pool = bd.createPool({
    host: "localhost",
    port: 3306,
    database: "volei",
    user: "root",
    password: "root",
    connectionLimit: 10,
    queueLimit: 0
})

async function buscaSelecao(id) {
    const conexao = await pool.getConnection()
    try {
        const sql = `
            SELECT 
            s.nome AS nomeS, 
            s.surgimento, 
            s.nacionalidade AS nacionalidadeS, 
            m.tipo as TM, 
            m.qntd as QM, 
            t.nome AS nomeT, 
            t.nacionalidade AS nacionalidadeT,
            j.id as idd,
            j.nome AS nomeJ,
            j.nascimento, j.idade, 
            j.nacionalidade as nacionalidadeJ,
            j.posicao, 
            j.tipo, 
            j.altura AS alt,
            j.ranking AS ran
            FROM selecao s
            JOIN MedalhasT m ON s.id = m.selecao_id
            JOIN Tecnico t ON s.id = t.selecao_id
            JOIN Jogadora j on s.id = j.selecao
            WHERE s.id = ?
            ORDER BY s.nome;
        `
        const o = `
            SELECT m.jogadora_id AS idz, 
                m.tipo, m.qntd
            FROM MedalhasJ m 
            JOIN Jogadora j ON m.jogadora_id = j.id
            WHERE j.selecao = ?
            ORDER BY m.jogadora_id;
        `
        const [linhas] = await conexao.query(sql, [id])
        const [linhass] = await conexao.query(o, [id])

        if (linhas.length === 0) {
            return null
        }

        const medalhas_times = []
        var i = 0
        for (const l of linhas) {
            const t = l.TM
            switch (t) {
                case "Ouro":
                    if (i === 0) {
                        medalhas_times.push({
                            tipo: l.TM,
                            qntd: l.QM
                        })
                        i++
                    }
                    break

                case "Prata":
                    if (i === 1) {
                        medalhas_times.push({
                            tipo: l.TM,
                            qntd: l.QM
                        })
                        i++
                    }
                    break

                case "Bronze":
                    if (i === 2) {
                        medalhas_times.push({
                            tipo: l.TM,
                            qntd: l.QM
                        })
                        i++
                    }
                    break
            }
        }

        const jogadoras = []
        const idsUnicos = new Set()
        for (const li of linhas) {
            const id = li.idd
            if (!idsUnicos.has(id)) {
                const data = new Date(li.nascimento);
                const dataFormatada = `${data.getUTCDate().toString().padStart(2, '0')}/${(data.getUTCMonth() + 1).toString().padStart(2, '0')}/${data.getUTCFullYear()}`
                jogadoras.push({
                    id: li.idd,
                    nome: li.nomeJ,
                    nascimento: dataFormatada,
                    idade: li.idade,
                    nacionalidade: li.nacionalidadeJ,
                    posicao: li.posicao,
                    tipo: li.tipo,
                    altura: li.alt,
                    ranking: li.ran
                })
                idsUnicos.add(id)
            }
        }

        const medalhas_jogadoras = linhass.map((linha) => ({
            id: linha.idz,
            tipo: linha.tipo,
            qntd: linha.qntd
        }))

        const resultado = {
            nome: linhas[0].nomeS,
            surgimento: linhas[0].surgimento,
            nacionalidade: linhas[0].nacionalidadeS,
            tecnico: linhas[0].nomeT,
            nacionalidadeTec: linhas[0].nacionalidadeT,
            medalhas_times,
            jogadoras,
            medalhas_jogadoras
        }
        return { resultado }
    } finally {
        conexao.release()
    }
}

async function buscaTimes(n) {
    const conexao = await pool.getConnection()
    try {
        const sql = `
            SELECT t.nome, t.id, t.imagem FROM Time t WHERE t.nacionalidade = ?;
        `
        const [times] = await conexao.query(sql, [n]);
        return [times]
    } finally {
        conexao.release()
    }
}

async function buscaTime(id) {
    const conexao = await pool.getConnection()
    try {
        const sql = `
            SELECT 
                ti.nome AS nomeTi, 
                ti.surgimento, 
                ti.nacionalidade AS nacionalidadeTi, 
                m.tipo AS TM, 
                m.qntd AS QM, 
                t.nome AS nomeT, 
                t.nacionalidade AS nacionalidadeT,
                j.id AS idd,
                j.nome AS nomeJ,
                j.nascimento, 
                j.idade, 
                j.nacionalidade AS nacionalidadeJ,
                j.posicao, 
                j.tipo,
                j.altura AS alt,
                j.ranking AS ran
            FROM Time ti
            JOIN MedalhasT m ON ti.id = m.time_id
            JOIN Tecnico t ON ti.id = t.time_id
            JOIN Jogadora j ON ti.id = j.time_id
            WHERE ti.id = ?
            ORDER BY ti.nome;
        `
        const o = `
            SELECT m.jogadora_id AS idz, 
                m.tipo, 
                m.qntd
            FROM MedalhasJ m 
            JOIN Jogadora j ON m.jogadora_id = j.id
            WHERE j.time_id = ?
            ORDER BY m.jogadora_id;
        `
        const [linhas] = await conexao.query(sql, [id])
        const [linhass] = await conexao.query(o, [id])

        if (linhas.length === 0) {
            return null
        }

        const medalhas_times = []
        let i = 0;

        for (const l of linhas) {
            const t = l.TM
            switch (t) {
                case "Ouro":
                    if (i === 0) {
                        medalhas_times.push({
                            tipo: l.TM,
                            qntd: l.QM
                        })
                        i++
                    }
                    break

                case "Prata":
                    if (i === 1) {
                        medalhas_times.push({
                            tipo: l.TM,
                            qntd: l.QM
                        })
                        i++
                    }
                    break

                case "Bronze":
                    if (i === 2) {
                        medalhas_times.push({
                            tipo: l.TM,
                            qntd: l.QM
                        })
                        i++
                    }
                    break
            }
        }

        const jogadoras = []
        const idsUnicos = new Set()
        for (const li of linhas) {
            const id = li.idd

            if (!idsUnicos.has(id)) {
                const data = new Date(li.nascimento)
                const dataFormatada = `${data.getUTCDate().toString().padStart(2, '0')}/${(data.getUTCMonth() + 1).toString().padStart(2, '0')}/${data.getUTCFullYear()}`
                jogadoras.push({
                    id: li.idd,
                    nome: li.nomeJ,
                    nascimento: dataFormatada,
                    idade: li.idade,
                    nacionalidade: li.nacionalidadeJ,
                    posicao: li.posicao,
                    tipo: li.tipo,
                    altura: li.alt,
                    ranking: li.ran
                })
                idsUnicos.add(id)
            }
        }

        const medalhas_jogadoras = linhass.map((linha) => ({
            id: linha.idz,
            tipo: linha.tipo,
            qntd: linha.qntd
        }))

        const res = {
            nome: linhas[0].nomeTi,
            surgimento: linhas[0].surgimento,
            nacionalidade: linhas[0].nacionalidadeTi,
            tecnico: linhas[0].nomeT,
            nacionalidadeTec: linhas[0].nacionalidadeT,
            medalhas_times,
            jogadoras,
            medalhas_jogadoras
        }

        return { res }
    } finally {
        conexao.release()
    }
}

async function buscaJogadora(no) {
    let se
    let ti
    const conexao = await pool.getConnection()
    try {
        const sql = `
        SELECT j.id AS idd,
               j.nome AS nomeJ, 
               j.nascimento, 
               j.idade,
               j.nacionalidade AS nacionalidadeJ,
               j.posicao, 
               j.tipo, 
               j.altura AS alt,
               j.ranking AS ran,
               j.selecao, 
               j.time_id,
               m.tipo AS tipoM, 
               m.qntd AS qntdM
        FROM jogadora j
        JOIN MedalhasJ m ON j.id = m.jogadora_id
        WHERE j.nome = ? 
        ORDER BY j.nome`

        const t = `
        SELECT 
               t.nome AS nomeT
        FROM jogadora j
        JOIN Time t ON j.time_id = t.id  
        WHERE j.nome = ? 
        ORDER BY j.nome`

        const s = `
        SELECT 
               s.nome AS nomeS
        FROM jogadora j
        JOIN Selecao s ON j.selecao = s.id
        WHERE j.nome = ? 
        ORDER BY j.nome`

        const o = `
        SELECT t.nome AS nomeTT, 
               t.nacionalidade AS nacionalidadeTT
        FROM Tecnico t 
        JOIN Jogadora j ON t.time_id = j.time_id
        WHERE j.nome = ?
        ORDER BY j.nome`

        const ou = `
        SELECT t.nome AS nomeTS, 
               t.nacionalidade AS nacionalidadeTS
        FROM Tecnico t 
        JOIN Jogadora j ON t.selecao_id = j.selecao
        WHERE j.nome = ?
        ORDER BY j.nome`
        const [linhas] = await conexao.query(sql, [no])
        const [linhasTecnicoTime] = await conexao.query(o, [no])
        const [linhasTecnicoSelecao] = await conexao.query(ou, [no])
        const [tim] = await conexao.query(t, [no])
        const [sel] = await conexao.query(s, [no])
        if (linhas.length === 0) {
            return null
        }
        if (linhas[0]?.selecao != null) {
            se = sel[0].nomeS
        }
        if (linhas[0]?.time_id != null) {
            ti = tim[0].nomeT
        }

        const jogadoras = []
        const idsUnicos = new Set()

        for (const li of linhas) {
            const id = li.idd
            if (!idsUnicos.has(id)) {
                const data = new Date(li.nascimento);
                const dataFormatada = `${data.getUTCDate().toString().padStart(2, '0')}/${(data.getUTCMonth() + 1).toString().padStart(2, '0')}/${data.getUTCFullYear()}`
                jogadoras.push({
                    id: li.idd,
                    nome: li.nomeJ,
                    nascimento: dataFormatada,
                    idade: li.idade,
                    nacionalidade: li.nacionalidadeJ,
                    posicao: li.posicao,
                    tipo: li.tipo,
                    altura: li.alt,
                    ranking: li.ran,
                    selecao: li.selecao,
                    time_id: li.time_id
                })
                idsUnicos.add(id)
            }
        }
        const medalhas_jogadoras = linhas.map((linha) => ({
            tipo: linha.tipoM,
            qntd: linha.qntdM
        }))
        const tecnicoTime = linhasTecnicoTime.length > 0 ? {
            nomeT: ti,
            nome: linhasTecnicoTime[0].nomeTT,
            nacionalidade: linhasTecnicoTime[0].nacionalidadeTT
        } : null

        const tecnicoSelecao = linhasTecnicoSelecao.length > 0 ? {
            nomeS: se,
            nome: linhasTecnicoSelecao[0].nomeTS,
            nacionalidade: linhasTecnicoSelecao[0].nacionalidadeTS
        } : null

        const resultado = {
            jogadoras,
            medalhas_jogadoras,
            tecnicoTime,
            tecnicoSelecao
        }
        return resultado
    } finally {
        conexao.release()
    }
}

async function insereSonho(valores) {
    const conexao = await pool.getConnection();
    try {
        const sql = `INSERT INTO DreamTimes(nome, criador, nacionalidade) VALUES (?,?,?);`
        return await conexao.query(sql, [valores.nome, valores.criador, valores.nacionalidade]);
    } finally {
        conexao.release()
    }
}

async function buscaSonho(id) {
    const conexao = await pool.getConnection()
    try {
        const sql = `
        SELECT d.nome, d.criador, d.nacionalidade FROM DreamTimes d WHERE d.id = ? ORDER BY d.id`
        let resposta = await conexao.query(sql, [id])
        return resposta
    } finally {
        conexao.release()
    }
}

async function buscaTSonho() {
    const conexao = await pool.getConnection()
    try {
        const sql = `
        SELECT * FROM DreamTimes`
        return await conexao.query(sql);
    } finally {
        conexao.release()
    }
}

async function apagaSonhos(id) {
    const conexao = await pool.getConnection()
    const deleteFilhos = "DELETE FROM jogadoradreamtimes WHERE dreamtimes_id = ?;"
    await conexao.query(deleteFilhos, [id])
    const deletePai = "DELETE FROM DreamTimes WHERE id = ?;"
    const resposta = await conexao.query(deletePai, [id])
    conexao.release()
    return resposta[0].affectedRows
}

async function insereJogadora(valores) {
    const conexao = await pool.getConnection()
    try {
        const sql = `INSERT INTO Jogadora(nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES (?,?,?,?,?,?,?,?,?,?);`
        return await conexao.query(sql, [valores.nome, valores.nascimento, valores.idade, valores.nacionalidade, valores.posicao, valores.tipo, null, null, valores.altura, valores.ranking]);
    } finally {
        conexao.release()
    }
}

async function buscaJogadoraC() {
    const conexao = await pool.getConnection()
    try {
        const sql = `
        SELECT 
            id,
            nome,
            DATE_FORMAT(nascimento, '%d/%m/%Y') AS nascimento, 
            TIMESTAMPDIFF(YEAR, nascimento, CURDATE()) AS idade, 
            nacionalidade, 
            posicao, 
            tipo,
            altura,
            ranking
        FROM Jogadora 
        WHERE tipo = "Casual";
    `
        const [resultados] = await conexao.query(sql)
        return resultados
    } finally {
        conexao.release()
    }
}
async function buscaJogadorai(ii) {
    const conexao = await pool.getConnection()
    try {
        const sql = `
        SELECT 
            id,
            nome,
            DATE_FORMAT(nascimento, '%d/%m/%Y') AS nascimento, 
            TIMESTAMPDIFF(YEAR, nascimento, CURDATE()) AS idade, 
            nacionalidade, 
            posicao, 
            tipo, 
            altura, 
            ranking
        FROM Jogadora 
        WHERE id = ?;
    `
        const [resultados] = await conexao.query(sql, ii)
        return resultados
    } finally {
        conexao.release()
    }
}

async function editaJogadoras(valores) {
    const conexao = await pool.getConnection()
    try {
        const sql = "UPDATE Jogadora set nome = ?, nascimento = ?, idade= ?, nacionalidade = ?, posicao = ?,  tipo = ?, altura = ?, ranking = ? WHERE id = ?;";
        let resposta = await conexao.query(sql, [valores.nome, valores.nascimento, valores.idade, valores.nacionalidade, valores.posicao, valores.tipo, valores.altura, valores.ranking, valores.id,]);
        return resposta[0].affectedRows
    } finally {
        conexao.release()
    }
}

async function apagaJogadoras(id) {
    const conexao = await pool.getConnection()
    const sqll = "DELETE FROM JogadoraDreamTimes WHERE jogadora_id = ?"
    await conexao.query(sqll, [id])
    const sqlll = "DELETE FROM MedalhasJ WHERE jogadora_id = ?"
    await conexao.query(sqlll, [id])
    const sql = "DELETE FROM Jogadora WHERE id = ?"
    const [resposta] = await conexao.query(sql, [id])
    conexao.release()
    if (resposta.affectedRows > 0) {
        return { success: `Jogadora com ID ${id} excluída com sucesso.` }
    } else {
        return { error: "Erro ao excluir a jogadora, ou jogadora não encontrada." }
    }
}


async function insereJogTime(valores) {
    const conexao = await pool.getConnection();
    try {
        const sql = `INSERT INTO JogadoraDreamTimes(jogadora_id, dreamtimes_id) VALUES (?,?);`
        return await conexao.query(sql, [valores.idJ, valores.idT])
    } finally {
        conexao.release()
    }
}

async function apagaJogTime(valores) {
    const conexao = await pool.getConnection()
    try {
        const sql = "DELETE FROM JogadoraDreamTimes WHERE jogadora_id = ? and dreamtimes_id = ?;"
        let resposta = await conexao.query(sql, [valores.idJ, valores.idT])
        return resposta[0].affectedRows
    } finally {
        conexao.release()
    }
}

async function buscaJogTimePorId(idT) {
    const conexao = await pool.getConnection()
    try {
        const sql = `
        SELECT 
        JogadoraDreamTimes.jogadora_id,
        Jogadora.nome AS jogadora_nome,
        DreamTimes.id AS dreamtimes_id,
        DreamTimes.nome AS dreamtime_nome
        FROM JogadoraDreamTimes
        JOIN Jogadora ON JogadoraDreamTimes.jogadora_id = Jogadora.id
        JOIN DreamTimes ON JogadoraDreamTimes.dreamtimes_id = DreamTimes.id
        WHERE DreamTimes.id = ?
        ORDER BY Jogadora.id;
    `
        const [resultados] = await conexao.query(sql, [idT])
        return resultados
    } finally {
        conexao.release()
    }
}


async function buscaTimex(idT) {
    const conexao = await pool.getConnection()
    try {
        const sql = 'SELECT * FROM DreamTimes WHERE id = ?'
        let rows = conexao.query(sql, [idT])
        return rows
    } finally {
        conexao.release()
    }
}

async function buscaSelecaoW(idS) {
    const conexao = await pool.getConnection()
    try {
        const sql = 'SELECT * FROM Selecao WHERE id = ?'
        let rows = conexao.query(sql, [idS])
        return rows
    } finally {
        conexao.release()
    }
}

async function buscaJogadorah(idJ) {
    const conexao = await pool.getConnection()
    try {
        const sql = 'SELECT * FROM Jogadora WHERE id = ?'
        const rows = conexao.query(sql, [idJ])
        return rows
    } finally {
        conexao.release()
    }
}

module.exports = {
    //especificos
    buscaSelecao, buscaTimes, buscaTime, buscaJogadora,
    //dream-teams
    insereSonho, buscaTSonho, apagaSonhos, buscaSonho,
    //jogadoras(casuais)
    insereJogadora, apagaJogadoras, editaJogadoras, buscaJogadoraC, buscaJogadorai,
    //jogadoras que estao em dream-team
    insereJogTime, apagaJogTime, buscaJogTimePorId,
    //outros
    buscaTimex, buscaSelecaoW, buscaJogadorah
}