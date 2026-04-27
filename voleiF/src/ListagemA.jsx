import React from 'react'

function ListagemA(dadox) {
    let conteudo

    if (dadox.json == undefined) {
        console.log("ok")
    } else {
        if (dadox.json.tecnicoTime?.nome === undefined) {
            conteudo = (
                <div id="idx" className="box">
                    <div className="columns">
                        <div className="column">
                            <h4 className="title is-4">Dados da Jogadora</h4>
                            <p><strong>Nome:</strong> {dadox.json.jogadoras[0].nome}</p>
                            <p><strong>Nascimento:</strong> {dadox.json.jogadoras[0].nascimento}</p>
                            <p><strong>Idade:</strong> {dadox.json.jogadoras[0].idade} anos</p>
                            <p><strong>Nacionalidade:</strong> {dadox.json.jogadoras[0].nacionalidade}</p>
                            <p><strong>Posição:</strong> {dadox.json.jogadoras[0].posicao}</p>
                            <p><strong>Tipo:</strong> {dadox.json.jogadoras[0].tipo}</p>
                            <p><strong>Altura:</strong> {dadox.json.jogadoras[0].altura}</p>
                            {dadox.json.jogadoras[0].ranking && dadox.json.jogadoras[0].ranking !== 0 && (
                                <p><strong>Ranking:</strong> Top {dadox.json.jogadoras[0].ranking}</p>
                            )}
                        </div>
                        <div className="column">
                            <h4 className="title is-4">Medalhas da Jogadora</h4>
                            {dadox.json.medalhas_jogadoras.map((medalha, index) => (
                                <p key={index}>
                                    <strong>{medalha.tipo}:</strong> {medalha.qntd}
                                </p>
                            ))}
                        </div>
                        <div className="column">
                            <h4 className="title is-4">Técnico (Seleção)</h4>
                            <p><strong>Nome:</strong> {dadox.json.tecnicoSelecao.nome}</p>
                            <p><strong>Nacionalidade:</strong> {dadox.json.tecnicoSelecao.nacionalidade}</p>
                        </div>
                    </div>
                </div>
            )
        } else {
            if (dadox.json.tecnicoSelecao?.nome == undefined) {
                conteudo = (
                    <div id="idx" className="box">
                        <div className="columns">
                            <div className="column">
                                <h4 className="title is-4">Dados da Jogadora</h4>
                                <p><strong>Nome:</strong> {dadox.json.jogadoras[0].nome}</p>
                                <p><strong>Nascimento:</strong> {dadox.json.jogadoras[0].nascimento}</p>
                                <p><strong>Idade:</strong> {dadox.json.jogadoras[0].idade} anos</p>
                                <p><strong>Nacionalidade:</strong> {dadox.json.jogadoras[0].nacionalidade}</p>
                                <p><strong>Posição:</strong> {dadox.json.jogadoras[0].posicao}</p>
                                <p><strong>Tipo:</strong> {dadox.json.jogadoras[0].tipo}</p>
                                <p><strong>Altura:</strong> {dadox.json.jogadoras[0].altura}</p>
                                {dadox.json.jogadoras[0].ranking && dadox.json.jogadoras[0].ranking !== 0 && (
                                    <p><strong>Ranking:</strong> Top {dadox.json.jogadoras[0].ranking}</p>
                                )}
                            </div>
                            <div className="column">
                                <h4 className="title is-4">Medalhas da Jogadora</h4>
                                {dadox.json.medalhas_jogadoras.map((medalha, index) => (
                                    <p key={index}>
                                        <strong>{medalha.tipo}:</strong> {medalha.qntd}
                                    </p>
                                ))}
                            </div>
                            <div className="column">
                                <h4 className="title is-4">Técnico (Time)</h4>
                                <p><strong>Nome:</strong> {dadox.json.tecnicoTime.nome}</p>
                                <p><strong>Nacionalidade:</strong> {dadox.json.tecnicoTime.nacionalidade}</p>
                            </div>
                        </div>
                    </div>
                )
            } else {
                conteudo = (
                    <div id="idx" className="box">
                        <div className="columns">
                            <div className="column">
                                <h4 className="title is-4">Dados da Jogadora</h4>
                                <p><strong>Nome:</strong> {dadox.json.jogadoras[0].nome}</p>
                                <p><strong>Nascimento:</strong> {dadox.json.jogadoras[0].nascimento}</p>
                                <p><strong>Idade:</strong> {dadox.json.jogadoras[0].idade} anos</p>
                                <p><strong>Nacionalidade:</strong> {dadox.json.jogadoras[0].nacionalidade}</p>
                                <p><strong>Posição:</strong> {dadox.json.jogadoras[0].posicao}</p>
                                <p><strong>Tipo:</strong> {dadox.json.jogadoras[0].tipo}</p>
                                <p><strong>Altura:</strong> {dadox.json.jogadoras[0].altura}</p>
                                {dadox.json.jogadoras[0].ranking && dadox.json.jogadoras[0].ranking !== 0 && (
                                    <p><strong>Ranking:</strong> Top {dadox.json.jogadoras[0].ranking}</p>
                                )}
                            </div>
                            <div className="column">
                                <h4 className="title is-4">Medalhas da Jogadora</h4>
                                {dadox.json.medalhas_jogadoras.map((medalha, index) => (
                                    <p key={index}>
                                        <strong>{medalha.tipo}:</strong> {medalha.qntd}
                                    </p>
                                ))}
                            </div>
                            <div className="column">
                                <h4 className="title is-4">Técnico (Time)</h4>
                                <p><strong>Nome:</strong> {dadox.json.tecnicoTime.nome}</p>
                                <p><strong>Nacionalidade:</strong> {dadox.json.tecnicoTime.nacionalidade}</p>
                            </div>
                            <div className="column">
                                <h4 className="title is-4">Técnico (Seleção)</h4>
                                <p><strong>Nome:</strong> {dadox.json.tecnicoSelecao.nome}</p>
                                <p><strong>Nacionalidade:</strong> {dadox.json.tecnicoSelecao.nacionalidade}</p>
                            </div>
                        </div>
                    </div>
                )
            }
        }
    }

    return <>{conteudo}</>
}

export default ListagemA


