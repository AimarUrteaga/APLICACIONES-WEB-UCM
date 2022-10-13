let listaTareas = [
  { text: 'Preparar prácticas AW', tags: ['universidad', 'awt'] },
  { text: 'Mirar fechas congreso', done: true, tags: [] },
  { text: 'Ir al supermercado', tags: ['personal', 'básico'] },
  { text: 'Jugar al fútbol', done: false, tags: ['personal', 'deportes'] },
  { text: 'Hablar con profesor', done: false, tags: ['universidad', 'tp2'] },
]

function getToDoTasks(list) {
  return list.filter((task) => task.done !== true).map((task) => task.text)
}

//console.log(getToDoTasks(listaTareas))

function findByTag(list, tag) {
  return list.filter((task) => task.tags.includes(tag))
}

//console.log(findByTag(listaTareas, 'personal'))

function findByTags(list, tagss) {
  //no se si es la manera mas eficiente de esta forma pero funciona ajaja
  let lst = []
  list.map((task) => {
    for (let i = 0; i < tagss.length; i++) {
      if (task.tags.includes(tagss[i])) {
        lst.push(task)
        break
      }
    }
  })
  return lst
}

//console.log(findByTags(listaTareas, ['personal', 'awt']))

function countDone(list) {
  return list.filter((task) => task.done === true).length
}

//console.log(countDone(listaTareas))

function createTask(texto) {
  dividido = texto.split(' ')
  let txt = ''
  tgs = []

  //he cambiado esto para recorrer la lista solo una vez
  dividido.map((tmp) =>
    tmp.includes('@') ? tgs.push(tmp.replace('@', '')) : (txt = txt + tmp + ' ')
  )

  return {
    text: txt,
    tags: tgs,
  }
}

console.log(createTask('Ir al medico @personal @salud'))
