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

//console.log("La función getToDoTasks(list) => "+getToDoTasks(listaTareas))

function findByTag(list, tag) {
  return list.filter((task) => task.tags.includes(tag))
}

//console.log("La función findByTag(list, 'personal') => "+findByTag(listaTareas, 'personal'))

function findByTags(list, tagss) {
  let lst = []
  list.map((task) => {
    tagss.map(tag=>{
      if (task.tags.includes(tag)) {lst.push(task)}
    })
  })
  return lst
}

//console.log("La función findByTags(list, ['personal', 'awt']) => "+findByTags(listaTareas, ['personal', 'awt']))

function countDone(list) {
  return list.filter((task) => task.done === true).length
}

//console.log("La función countDone(list) => "+countDone(listaTareas))

function createTask(texto) {
  dividido = texto.split(' ')
  let txt = ''
  tgs = []
  dividido.map((tmp) =>
    tmp.includes('@') ? tgs.push(tmp.replace('@', '')) : (txt = txt + tmp + ' ')
  )

  return {
    text: txt,
    tags: tgs,
  }
}

//console.log("La función createTask('Ir al medico @personal @salud') => ")
//console.log(createTask('Ir al medico @personal @salud'))