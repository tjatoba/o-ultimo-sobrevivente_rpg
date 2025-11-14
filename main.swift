//
//  main.swift
//  rpg_jatoba
//
//  Created by THIAGO MENDES JATOBA on 14/11/25.
//

import Foundation

//Variaveis Globais

var inventario:[String] = ["Água, Comida Enlatada"]
var saude = 100
var energia = 80
var continuarJogo = true

//Funções de Menu

func mostrarStatus(){
    print("\n=== STATUS DO SOBREVIVENTE ===")
    print("\n=> Saúde: \(saude)")
    print("\n=> Energia: \(energia)")
    print("\n=> Inventário: \(inventario)")
    print("================================\n")
}

func explorarArea(){
    print("\n🔍 Explorando a área devastada...\n")
    energia -= 10
    
    let achados = ["Combustível", "Bateria", "Nada"]
    
    /*randomElement escolhe um elemento aleatório da coleção.
     Se a coleção estiver vazia, o método retorna nil.
     (Fonte: https://developer.apple.com/documentation/swift/array/randomelement())*/
    
    let achado = achados.randomElement() ?? "Nada"
    
    if achado != "Nada" {
        print("✅ Você encontrou: \(achado)")
        inventario.append(achado)
        energia += 5
    } else {
        print("❌ Nada útil encontrado...")
        saude += 5
    }
}

func procurarRecursos(){
    print("\n⛏️ Procurando recursos...\n")
    energia -= 5
    
    let recursos = ["Água Potável", "Comida", "Medicamentos", "Ferro Velho"]
    let recurso = recursos.randomElement() ?? "Água Potável"
    
    print("✅ Você coletou: \(recurso)")
    inventario.append(recurso)
    saude += 10
}

func lutarComMutantes(){
    print("\n⚔️ Enfrentando mutantes...\n")
    
    if energia >= 20{
        energia -= 20
        saude -= 15
        
        let armaInimigo = ["Arma Imporvisada", "Munição", "Proteções"]
        let item = armaInimigo.randomElement() ?? "Arma Improvisada"
        
        print("✅ Você derrotou os mutantes e encontrou: \(item)")
        inventario.append(item)
    } else {
        print("❌ Energia insuficiente para lutar!")
        saude -= 25
    }
}

//Verificações

func verificaInventario(){
    print("\n🎒 Seu Inventário:\n")
       
    /* enumerated retorna um valor booleano, indicando se os elementos iniciais da
    sequência são equivalentes aos elementos de outra sequência,
    usando o atributo fornecido como teste de equivalência.
    (Fonte:https://developer.apple.com/documentation/swift/string/enumerated())*/
    
    for (index,item) in inventario.enumerated(){
        print("\(index + 1). \(item)")
    }
    
    if inventario.contains("Medicamentos") && saude < 80 {
        print("\n*** 💊 Usando seu Kit Médico... ***\n")
        saude += 30
        
        /* firstIndex retorna o último índice onde o valor especificado aparece na collection.
         (Fonte: https://developer.apple.com/documentation/swift/array/firstindex(of:))*/
        
        if let index = inventario.firstIndex(of: "Medicamentos"){
            inventario.remove(at: index)
        }
    }
}

//Finalizando Jogo

func sairDojogo(){
    print("\n☠️ O mundo pós-apocalíptico te consumiu...\n")
    print("Fim do jogo!")
       continuarJogo = false
}

//Menu em Loop

print("=== 🗑️ O ÚLTIMO SOBREVIVENTE 🗑️ ===")
print("Bem-vindo ao mundo pós-apocalíptico!")
print("Você é um dos poucos sobreviventes...")

while continuarJogo && saude > 0 && energia > 0{
    mostrarStatus()
    
    print("\n O que você deseja fazer?")
    print("1. 🔍 Explorar área devastada")
    print("2. ⛏️ Procurar recursos")
    print("3. ⚔️ Lutar contra mutantes")
    print("4. 🎒 Verificar inventário")
    print("5. ☠️ Sair do jogo (morrer)")
    print("\nEscolha uma opção (1-5):", terminator: " ")
    
     let escolha = Int(readLine() ?? "") ?? 0
        switch escolha {
        case 1:
            explorarArea()
        case 2:
            procurarRecursos()
        case 3:
            lutarComMutantes()
        case 4:
            verificaInventario()
        case 5:
            sairDojogo()
        default:
            print("❌ Opção inválida! Tente novamente.")
        }
}

//Condições de "Fim de Jogo"

if saude <= 0 {
    print()
    continuarJogo = false
} else if energia <= 0 {
    print()
    continuarJogo = false
}
