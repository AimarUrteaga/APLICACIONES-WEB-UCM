let listaTareas = [
    {text:"Preparar prácticas AW", tags:["universidad","awt"]}
    , {text: "Mirar fechas congreso", done: true, tags:[]}
    , {text: "Ir al supermercado", tags: ["personal", "básico"]}
    , {text: "Jugar al fútbol", done: false, tags:["personal", "deportes"]}
    , {text: "Hablar con profesor", done: false, tags:["universidad", "tp2"]}
    ];

    function getToDoTasks(tasks){
        return tasks.filter(tasks => tasks.done == true).map(tasks => listaTareas.text);
    }

    function findByTag(tasks, tag){
        return tasks.filter(tasks => tasks.tags.includes(tag));
    }

    function findByTags(tasks, tags){//No se como hacerlo
        return tasks.filter(tasks => tasks.tags.includes(tag));
    }

    function countDone(tasks){
        return getToDoTasks(tasks).length;
    }

    function createTask(texto){
        dividido = texto.split(" ");
        return {text:dividido.filter(tmp => !tmp.includes("@")).join(" "), tags:dividido.filter(tmp => tmp.includes("@")).map(x => x.replace("@", ""))};
    }