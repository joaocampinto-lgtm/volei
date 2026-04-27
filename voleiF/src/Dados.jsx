import React, { useState } from 'react'
import CadastroJogadora from './CadastroJogadora.jsx'
import CadastroSonho from './CadastroSonho.jsx'
import CadastroJogTime from './CadastroJogTime.jsx'
import GetFoda from './GetFoda.jsx'

function Dados() {
    const [conteudo, setConteudo] = useState(null)
    const [botaoVisivel, setBotaoVisivel] = useState(true)

    const carregarDados = () => {
        setConteudo(
            <div>
                <div className="columns is-centered">
                    <div className="column is-4">
                        <div className="box custom-box">
                            <CadastroJogadora />
                        </div>
                    </div>

                    <div className="column is-4">
                        <div className="box custom-box">
                            <CadastroSonho />
                        </div>
                    </div>

                    <div className="column is-4">
                        <div className="box custom-box">
                            <CadastroJogTime />
                        </div>
                    </div>
                </div>

                <div className="columns is-mobile">
                    <div className="column is-12 mx-5">
                        <div className="box aa">
                            <GetFoda />
                        </div>
                    </div>
                </div>
            </div>
        )
        setBotaoVisivel(false)
    }

    return (
        <>
            {botaoVisivel && (
                <form>
                    <br />
                    <input
                        className="button is-info is-dark is-outlined"
                        type="button"
                        value="Carregar dados"
                        onClick={carregarDados}
                    />
                </form>
            )}
            <br></br> <br></br> <br></br> <br></br>
            <div>{conteudo}</div>
        </>
    )
}

export default Dados;




