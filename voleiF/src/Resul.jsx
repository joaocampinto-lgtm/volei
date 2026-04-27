import { useEffect, useState } from 'react';

function Resul(props) {
    const [jogadorasTime1, setJogadorasTime1] = useState([])
    const [jogadorasTime2, setJogadorasTime2] = useState([])
    const [pontosTime1, setPontosTime1] = useState(0)
    const [pontosTime2, setPontosTime2] = useState(0)

    useEffect(() => {
        if (!props.res.time1 || !props.res.time2) {
            return;
        }

        const carregarJogadoras = async (time, setJogadoras) => {
            try {
                let endpoint;
                if (time.tipo === 'Seleção') {
                    endpoint = `http://localhost:8001/selecao/${time.id}`
                } else if (time.id > 600) {
                    endpoint = `http://localhost:8001/JogTime/${time.id}`
                } else {
                    endpoint = `http://localhost:8001/time/${time.id}`
                }

                console.log(`Fetching data from: ${endpoint}`)
                const response = await fetch(endpoint)

                if (!response.ok) {
                    throw new Error(`Erro na requisição: ${response.statusText}`)
                }

                const data = await response.json()

                if (time.tipo === 'Seleção') {
                    if (data.resultado && Array.isArray(data.resultado.jogadoras)) {
                        setJogadoras(data.resultado.jogadoras)
                    } else {
                        console.error(`Estrutura inesperada no JSON para ${time.nome}:`, data)
                    }
                } else if (time.id > 600) {
                    const jogadorasComRanking = await Promise.all(data.map(async (jogadora) => {
                        if (jogadora.jogadora_id < 600) {
                            const rankingResponse = await fetch(`http://localhost:8001/jogadoraa/${jogadora.jogadora_nome}`)
                            if (rankingResponse.ok) {
                                const rankingData = await rankingResponse.json();
                                if (rankingData && rankingData.jogadoras && rankingData.jogadoras.length > 0) {
                                    return { ...jogadora, ranking: rankingData.jogadoras[0].ranking, tipo: 'Profissional' }
                                }
                            }
                            return { ...jogadora, tipo: 'Profissional' }
                        } else {
                            return { ...jogadora, tipo: 'Casual' }
                        }
                    }));
                    setJogadoras(jogadorasComRanking)
                } else {
                    if (Array.isArray(data)) {
                        setJogadoras(data);
                    } else if (data.res && Array.isArray(data.res.jogadoras)) {
                        setJogadoras(data.res.jogadoras)
                    } else {
                        console.error(`Estrutura inesperada no JSON para ${time.nome}:`, data)
                    }
                }
            } catch (error) {
                window.alert(`${time.nome} Sem jogadoras cadastradas`)
            }
        }

        carregarJogadoras(props.res.time1, setJogadorasTime1);
        carregarJogadoras(props.res.time2, setJogadorasTime2);
    }, [props.res])

    useEffect(() => {
        const calcularPontos = (jogadoras) => {
            let pontos = 0

            jogadoras.forEach((jogadora) => {
                if (jogadora.tipo === 'Profissional') {
                    pontos += 2
                } else if (jogadora.tipo === 'Casual') {
                    pontos += 1
                }
                if (jogadora.ranking) {
                    switch (jogadora.ranking) {
                        case 1000:
                            pontos += 4
                            break
                        case 500:
                            pontos += 6
                            break
                        case 200:
                            pontos += 10
                            break
                        case 100:
                            pontos += 12
                            break
                        case 50:
                            pontos += 14
                            break
                        case 10:
                            pontos += 16
                            break
                        case 5:
                            pontos += 24
                            break
                        default:
                            break
                    }
                }
            })

            return pontos
        }

        setPontosTime1(calcularPontos(jogadorasTime1))
        setPontosTime2(calcularPontos(jogadorasTime2))
    }, [jogadorasTime1, jogadorasTime2])

    return (
        <div className="has-text-centered">
            {jogadorasTime1.length > 0 && jogadorasTime2.length > 0 ? (
                <>
                    <h2 className="title is-4 has-text-primary">Resultado da Simulação</h2>
                    <p className="is-size-5">
                        <strong className="has-text-info">{props.res.time1.nome}</strong>: {pontosTime1} pontos
                    </p>
                    <p className="is-size-5">
                        <strong className="has-text-info">{props.res.time2.nome}</strong>: {pontosTime2} pontos
                    </p>
                    <h3 className="title is-5 has-text-success">
                        Vencedor: {pontosTime1 > pontosTime2 ? props.res.time1.nome : props.res.time2.nome}!
                    </h3>
                </>
            ) : (
                <div className="box has-background-light has-text-centered" style={{ margin: '0 auto', maxWidth: '600px' }}>
                    <h2 className="title is-5 has-text-info">Critérios de Pontuação</h2>
                    <p className="is-italic">Cada jogadora contribui para a pontuação de acordo com os seguintes critérios:</p>
                    <ul>
                        <li>
                            <strong>Tipo da jogadora:</strong>
                            <ul>
                                <li className="ml-4">Profissional: <span className="tag is-success">+2 pontos</span></li>
                                <li className="ml-4">Casual: <span className="tag is-warning">+1 ponto</span></li>
                            </ul>
                        </li>
                        <li>
                            <strong>Ranking da jogadora:</strong>
                            <ul>
                                <li className="ml-4">1000: <span className="tag is-info">+4 pontos</span></li>
                                <li className="ml-4">500: <span className="tag is-info">+6 pontos</span></li>
                                <li className="ml-4">200: <span className="tag is-info">+10 pontos</span></li>
                                <li className="ml-4">100: <span className="tag is-info">+12 pontos</span></li>
                                <li className="ml-4">50: <span className="tag is-info">+14 pontos</span></li>
                                <li className="ml-4">10: <span className="tag is-info">+16 pontos</span></li>
                                <li className="ml-4">5: <span className="tag is-info">+24 pontos</span></li>
                            </ul>
                        </li>
                        <li>
                            <strong>Jogadoras sem ranking:</strong> <span className="has-text-danger">Não contribuem para a pontuação do time.</span>
                        </li>
                    </ul>
                </div>
            )}
        </div>
    )
}

export default Resul
