function ListagemJ(dadox) {
    let conteudo
    let im
    const nome = dadox.json.res.nome
    const surgimento = dadox.json.res.surgimento
    const nacionalidade = dadox.json.res.nacionalidade
    const tecnico = dadox.json.res.tecnico
    const nacionalidadeTec = dadox.json.res.nacionalidadeTec
    const medalhas_times = dadox.json.res.medalhas_times || []
    const jogadoras = dadox.json.res.jogadoras || []
    const medalhas_jogadoras = dadox.json.res.medalhas_jogadoras || []
    for (let h of dadox.i) {
        if (nome === h.nome) {
            im = h.imagem
            console.log(im)
            break
        }
    }
    const renderMedalhasTimes = medalhas_times.map((medalha, index) => (
        <tr key={index}>
            <td>{medalha.tipo}</td>
            <td>{medalha.qntd}</td>
        </tr>
    ))

    const renderJogadoras = jogadoras.map((jogadora, index) => (
        <tr key={index}>
            <td>{jogadora.nome}</td>
            <td>{jogadora.nascimento}</td>
            <td>{jogadora.idade}</td>
            <td>{jogadora.posicao}</td>
            <td>{jogadora.nacionalidade}</td>
            <td>{jogadora.altura}</td>
            <td>{jogadora.ranking ? (jogadora.ranking !== 0 ? `Top ${jogadora.ranking}` : '') : ''}</td>
            <td>
                <table>
                    <thead>
                        <tr>
                            <th>Tipo</th>
                            <th>Quantidade</th>
                        </tr>
                    </thead>
                    <tbody>
                        {medalhas_jogadoras
                            .filter((medalha) => medalha.id === jogadora.id)
                            .map((medalha, idx) => (
                                <tr key={idx}>
                                    <td>{medalha.tipo}</td>
                                    <td>{medalha.qntd}</td>
                                </tr>
                            ))}
                    </tbody>
                </table>
            </td>
        </tr>
    ))

    conteudo =
        <>
            <div id="tab">
                <br />
                <h2 className='is-size-3 has-text-weight-bold'>Informações do Time</h2>
                <br />
                <div className="columns is-centered">
                    <div className="column is-8 has-text-centered">
                        <table className='table is-bordered is-striped is-narrow is-hoverable is-fullwidth' border="1">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Nome</th>
                                    <th>Surgimento</th>
                                    <th>Nacionalidade</th>
                                    <th>Técnico</th>
                                    <th>Nacionalidade Técnico</th>
                                    <th>Medalhas</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div className="porr"> aaaaaaaaaaaaaaaa </div>
                                        <img src={im} alt="Logo do Time" className="logox" width={1000} />
                                    </td>
                                    <td>{nome}</td>
                                    <td>{surgimento}</td>
                                    <td>{nacionalidade}</td>
                                    <td>{tecnico}</td>
                                    <td>{nacionalidadeTec}</td>
                                    <td>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th>Tipo</th>
                                                    <th>Quantidade</th>
                                                </tr>
                                            </thead>
                                            <tbody>{renderMedalhasTimes}</tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <h4 className='is-size-3 has-text-weight-bold'>Jogadoras</h4>
                        <br />
                        <table className='table is-bordered is-striped is-narrow is-hoverable is-fullwidth' border="1">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Nascimento</th>
                                    <th>Idade</th>
                                    <th>Posição</th>
                                    <th>Nacionalidade</th>
                                    <th>Altura</th>
                                    <th>Ranking</th>
                                    <th>Medalhas</th>
                                </tr>
                            </thead>
                            <tbody>{renderJogadoras}</tbody>
                        </table>
                        <br />
                    </div>
                </div>
            </div>
        </>
    return (
        <>
            {conteudo}
        </>
    )
}

export default ListagemJ;
