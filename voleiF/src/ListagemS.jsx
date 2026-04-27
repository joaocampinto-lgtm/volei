import React, { useState, useEffect } from 'react'
import ListagemJ from './ListagemJ'

function ListagemS({ json, selecionarTime, setSelecionarTime }) {
  console.log(json)
  const [dadosTimes, setDadosTimes] = useState([])
  const [dadox, setDadox] = useState(null)

  function team(idTime) {
    fetch(`http://localhost:8001/time/${idTime}`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
    })
      .then((resultado) => {
        if (!resultado.ok) {
          throw new Error('Requisição com problema')
        }
        return resultado.json()
      })
      .then((data) => {
        setDadox(data);
        setSelecionarTime(true)
      })
      .catch((erro) => {
        console.error('Erro na requisição:', erro)
      })
  }

  useEffect(() => {
    setDadox(null);
  }, [json]);

  const {
    nome,
    surgimento,
    nacionalidade,
    tecnico,
    nacionalidadeTec,
    medalhas_times = [],
    jogadoras = [],
    medalhas_jogadoras = [],
  } = json.resultado;

  useEffect(() => {
    fetch(`http://localhost:8001/times/${nacionalidade}`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
    })
      .then((resultado) => {
        if (!resultado.ok) {
          throw new Error('Requisição com problema');
        }
        return resultado.json();
      })
      .then((data) => {
        setDadosTimes(data);
      })
      .catch((erro) => {
        console.error('Erro na requisição:', erro);
      });
  }, [nacionalidade]);

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
        <table className='table is-bordered is-striped is-narrow is-hoverable is-fullwidth'>
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

  return (
    <>
      <div>
        <h2 className='is-size-3 has-text-weight-bold'>Times da seleção clicada</h2>
        <div className='column is-centered'>
          <label htmlFor="timesSelect" className='has-text-weight-bold'>Selecione um Time:</label>
          <div className="select" style={{ maxWidth: '350px', margin: '0 auto' }}>
            <select
              id="timesSelect"
              onChange={(e) => team(e.target.value)}
            >
              <option value=""></option>
              {dadosTimes.map((time, index) => (
                <option key={index} value={time.id}>
                  {time.nome}
                </option>
              ))}
            </select>
          </div>
        </div>

        {!selecionarTime && (
          <div id="table" className='columns is-centered'>
            <div className='column is-8 has-text-centered'>
              <h3 className='is-size-3 has-text-weight-bold'>Informações da Seleção</h3>
              <br />
              <table className='table is-bordered is-striped is-narrow is-hoverable is-fullwidth' border="1">
                <thead>
                  <tr>
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
                    <td>{nome}</td>
                    <td>{surgimento}</td>
                    <td>{nacionalidade}</td>
                    <td className='has-text-justified'>{tecnico}</td>
                    <td>{nacionalidadeTec}</td>
                    <td>
                      <table className='table is-bordered is-striped is-narrow is-hoverable is-fullwidth'>
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
        )}
      </div>
      {dadox && <ListagemJ json={dadox} i={dadosTimes} />}
    </>
  )
}

export default ListagemS;
