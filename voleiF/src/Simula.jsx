import { useState } from 'react'
import Resul from './Resul'

function Simula(props) {
    const [team1, setTeam1] = useState('')
    const [team2, setTeam2] = useState('')
    const [resultado, setResultado] = useState([])
    const dadosTimes = props.json || []
    const opcoes = dadosTimes.map((time) => ({
        id: time.id,
        nome: time.nome,
        tipo: 'Time'
    })).concat([
        { id: 41, nome: 'Brasil', tipo: 'Seleção' },
        { id: 42, nome: 'Turquia', tipo: 'Seleção' },
        { id: 43, nome: 'Itália', tipo: 'Seleção' }
    ])

    const handleSimulate = () => {
        const time1 = opcoes.find((opcao) => opcao.nome === team1)
        const time2 = opcoes.find((opcao) => opcao.nome === team2)

        if (time1 && time2) {
            setResultado({ time1, time2 })
        } else {
            console.error('Selecione ambos os times antes de simular!')
        }
    }

    const opcoesTime2 = opcoes.filter(opcao => opcao.nome !== team1)

    return (
        <>
            <div className="field">
                <label htmlFor="timesSelect1" className="has-text-weight-bold">
                    Selecione o Time 1:
                </label>
                <div className="select" style={{ maxWidth: '350px', margin: '0 auto' }}>
                    <select
                        id="timesSelect1"
                        value={team1}
                        onChange={(e) => {
                            setTeam1(e.target.value)
                            if (e.target.value === team2) {
                                setTeam2('')
                            }
                        }}
                    >
                        <option value="">Selecione um time ou seleção</option>
                        {opcoes.map((opcao) => (
                            <option key={opcao.id} value={opcao.nome}>
                                {opcao.nome} ({opcao.tipo})
                            </option>
                        ))}
                    </select>
                </div>
            </div>

            <div className="field">
                <label htmlFor="timesSelect2" className="has-text-weight-bold">
                    Selecione o Time 2:
                </label>
                <div className="select" style={{ maxWidth: '350px', margin: '0 auto' }}>
                    <select
                        id="timesSelect2"
                        value={team2}
                        onChange={(e) => {
                            setTeam2(e.target.value);
                            if (e.target.value === team1) {
                                setTeam1('');
                            }
                        }}
                    >
                        <option value="">Selecione um time ou seleção</option>
                        {opcoesTime2.map((opcao) => (
                            <option key={opcao.id} value={opcao.nome}>
                                {opcao.nome} ({opcao.tipo})
                            </option>
                        ))}
                    </select>
                </div>
            </div>

            <div className="field has-text-centered">
                <button
                    className="button is-info"
                    onClick={handleSimulate}
                    disabled={!team1 || !team2}
                >
                    {(!team1 || !team2) ? "Selecione ambos os times" : "Simular!"}
                </button>
            </div>
            {resultado && <Resul res={resultado} />}
        </>
    )
}

export default Simula

