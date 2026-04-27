import { useState } from 'react'
import ListagemS from './ListagemS'
import ListagemA from './ListagemA'
import Pesquisa from './Pesquisa.jsx'
import Pont from './Pont.jsx'
import Simula from './Simula.jsx'

function App() {
  const [consultas, setConsultas] = useState(null)
  const [selecionarTime, setSelecionarTime] = useState(false)
  const [u, setU] = useState(null)
  const [s, setS] = useState(null)
  const [mostrarConteudoCompleto, setMostrarConteudoCompleto] = useState(true)
  const [mostrarListagemA, setMostrarListagemA] = useState(false)

  function ai(d) {
    setU(d)
    setMostrarListagemA(true)
  }

  function si(m) {
    setS(m)
    setMostrarConteudoCompleto(false)
  }

  function Recupera(id) {
    let options = {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
    }

    fetch(`http://localhost:8001/selecao/${id}`, options)
      .then((resultado) => {
        if (!resultado.ok) {
          throw new Error('Requisição com problema')
        }
        return resultado.json()
      })
      .then((dados) => {
        setSelecionarTime(false)
        setConsultas(dados)
      })
      .catch((erro) => {
        console.error('Erro na requisição:', erro)
      })
  }

  function RestaurarConteudo() {
    setMostrarConteudoCompleto(true)
    setS(null)
  }

  function recolherInformacoes() {
    setMostrarListagemA(false)
    setU(null)
  }

  return (
    <>
      <div className="box has-text-centered my-1">
        <div className="columns is-centered">
          <div className="column is-6">
            <h1
              className="title is-size-2 has-text-weight-bold"
              onClick={RestaurarConteudo}
              style={{ cursor: 'pointer' }}
            >
              Seleções Femininas de Vôlei
            </h1>
            {!mostrarConteudoCompleto && (
              <p
                className="has-text-grey-light is-size-5"
                style={{ marginTop: '10px', cursor: 'pointer' }}
                onClick={RestaurarConteudo}
              >
                clique aqui para restaurar seleções
              </p>
            )}
          </div>
          <div className="column is-6">
            <div className="columns is-centered">
              <div className="column is-7">
                <Pesquisa fun={ai} />
              </div>
              <div className="column is-5">
                <Pont fun={si} />
              </div>
            </div>
          </div>
        </div>
      </div>
      <br />
      <br />
      {mostrarListagemA && <ListagemA json={u} />}
      {mostrarListagemA && (
        <div className="has-text-centered">
          <button className="button is-light" onClick={recolherInformacoes}>
            Recolher informações
          </button>
        </div>
      )}
      <br />
      <br />
      {s && <Simula json={s} />}
      {mostrarConteudoCompleto && (
        <>
          <div className="columns">
            <button className="column is-4" onClick={() => Recupera(41)}>
              <img
                src="https://st4.depositphotos.com/2361751/20705/i/450/depositphotos_207054556-stock-photo-brazil-flag-with-a-glossy.jpg"
                alt="Bandeira Brasil "
                className="Bandeira"
                width={300}
              />
            </button>
            <button className="column is-4" onClick={() => Recupera(42)}>
              <img
                src="https://png.pngtree.com/thumb_back/fw800/background/20210204/pngtree-beautiful-turkish-flag-background-image_554991.jpg"
                alt="Bandeira Turquia"
                className="Bandeira"
                width={285}
              />
            </button>
            <button className="column is-4" onClick={() => Recupera(43)}>
              <img
                src="https://coisadeitaliano.com.br/wp-content/uploads/2017/06/italy-1460295_1920_mini-1200x766.jpg"
                alt="Bandeira Itália"
                className="Bandeira"
                width={308}
              />
            </button>
          </div>
          <br />
          <br />
          {consultas && (
            <ListagemS
              json={consultas}
              selecionarTime={selecionarTime}
              setSelecionarTime={setSelecionarTime}
            />
          )}
        </>
      )}
    </>
  )
}

export default App