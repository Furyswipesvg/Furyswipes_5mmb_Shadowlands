
if not(GetLocale() == "ptBR") then
    return;
end

local L = LibStub("AceLocale-3.0"):NewLocale("GSE", "ptBR")

-- Options translation
L["  The Alternative ClassID is "] = "A ClassID alternativa é "
L[" Deleted Orphaned Macro "] = "Macro Órfã Apagada"
L[" from "] = "de"
L[" has been added as a new version and set to active.  Please review if this is as expected."] = "foi adicionado como uma nova versão e definido como ativo. Por favor, verifique se isso é o que se esperava."
L[" is not available.  Unable to translate sequence "] = "não está disponível. Incapaz de traduzir a sequência"
L[" macros per Account.  You currently have "] = "macros por Conta. Você tem atualmente "
L[" macros per character.  You currently have "] = "macros por personagem. Você tem atualmente "
L[" saved as version "] = "salva como versão"
L[" sent"] = "enviado"
L[" tried to overwrite the version already loaded from "] = "tentou substituir a versão já carregada de "
L[" was imported as a new macro."] = "foi importada como uma nova macro."
L[" was imported with the following errors."] = "foi importada com os seguintes erros."
L[" was updated to new version."] = "foi atualizada para uma nova versão."
L[". This version was not loaded."] = ". Esta versão não foi carregada."
L["/gs |r to get started."] = "/gs |r para começar."
L["/gs checkmacrosforerrors|r will loop through your macros and check for corrupt macro versions.  This will then show how to correct these issues."] = "/gs checkmacrosforerrors|r irá percorrer suas macros e checar por versões de macro corrompidas. Depois irá mostrar como corrigir estes problemas."
L["/gs cleanorphans|r will loop through your macros and delete any left over GS-E macros that no longer have a sequence to match them."] = "/gs cleanorphans|r percorrerá suas macros e irá apagar qualquer macro GS-E deixada para trás que não tiver uma sequência atrelada a ela."
L["/gs help|r to get started."] = "/gs help|r para começar."
L["/gs listall|r will produce a list of all available macros with some help information."] = "/gs listall|r irá produzir uma lista com todas as macros disponíveis com algumas informações de ajuda."
L["/gs showspec|r will show your current Specialisation and the SPECID needed to tag any existing macros."] = "/gs showspec|r irá mostrar sua especialização atual e a SPECID necessária para marcar quaisquer macros existentes."
L["/gs|r again."] = "/gs|r novamente."
L["/gs|r will list any macros available to your spec.  This will also add any macros available for your current spec to the macro interface."] = "/gs|r irá listar quaisquer macros disponíveis para sua especialização. Também irá adicionar quaisquer macros disponíveis para sua especialização atual à interface de macros."
L[":|r The Sequence Translator allows you to use GS-E on other languages than enUS.  It will translate sequences to match your language.  If you also have the Sequence Editor you can translate sequences between languages.  The GS-E Sequence Translator is available on curse.com"] = ":|r O Sequence Translator permite que você use o GS-E em outros idiomas além de enUS. Isto vai traduzir sequências para corresponder ao seu idioma. Se você também tiver o Sequence Editor você pode traduzir sequências entre idiomas. O GS-E Sequence Translator está disponível em curse.com"
L[":|r To get started "] = ":|r Para começar"
L[":|r You cannot delete the only copy of a sequence."] = ":|r Você não pode apagar a única cópia de uma sequência."
L[":|r Your current Specialisation is "] = ":|r Sua Especialização atual é "
L["|cffff0000GS-E:|r Gnome Sequencer - Enhanced Options"] = "|cffff0000GS-E:|r Opções do Gnome Sequencer - Enhanced"
L["|r Incomplete Sequence Definition - This sequence has no further information "] = "|r Definição de Sequência Incompleta - Esta sequência não possui mais informações "
L["|r.  As a result this macro was not created.  Please delete some macros and reenter "] = "|r. Como resultado esta macro não foi criada. Por favor apague algumas macros e tente de novo "
L["|r.  You can also have a  maximum of "] = "|r. Você também pode ter no máximo "
L["<DEBUG> |r "] = "<DEPURAÇÃO> |r "
L["<SEQUENCEDEBUG> |r "] = "<DEPURAÇÃODASEQUÊNCIA> |r "
L["A new version of %s has been added."] = "Uma nova versão de %s foi adicionada."
L["A sequence collision has occured. "] = "Ocorreu uma colisão de sequência."
L["A sequence collision has occured.  Extra versions of this macro have been loaded.  Manage the sequence to determine how to use them "] = "Ocorreu uma colisão de sequência. Versões extras desta macro foram carregadas. Gerencie a sequência para determinar como usá-las "
L["A sequence collision has occured.  Your local version of "] = "Ocorreu uma colisão de sequência. Sua versão local de "
L["About"] = "Sobre"
L["About GSE"] = "Sobre o GSE"
L["Actions"] = "Ações"
L["Active Version: "] = "Versão Ativa: "
--[[Translation missing --]]
L["Add a substitution variable for this macro.  This can either be a straight string swap or can be a function.  If a lua function the function needs to return a value."] = "Add a substitution variable for this macro.  This can either be a straight string swap or can be a function.  If a lua function the function needs to return a value."
--[[Translation missing --]]
L["Add Variable"] = "Add Variable"
--[[Translation missing --]]
L["Add WeakAura"] = "Add WeakAura"
L["Addin Version %s contained versions for the following macros:"] = "A versão %s adicionada continha versões para as seguintes macros:"
L["All macros are now stored as upper case names.  You may need to re-add your old macros to your action bars."] = "Todas as macros agora são armazenadas com nomes em maiúsculas. Pode ser necessário adicionar novamente as macros antigas às barras de ação."
L["Alt Keys."] = "Teclas Alt."
L["Any Alt Key"] = "Qualquer Tecla Alt"
L["Any Control Key"] = "Qualquer Tecla Ctrl"
L["Any Shift Key"] = "Qualquer Tecla Shift"
L["Are you sure you want to delete %s?  This will delete the macro and all versions.  This action cannot be undone."] = "Tem certeza de que deseja excluir %s? Isto excluirá a macro e todas as versões. Esta ação não poderá ser desfeita."
L["Arena"] = "Arena"
L["Arena setting changed to Default."] = "Configuração de Arena alterada para o Padrão."
L["As GS-E is updated, there may be left over macros that no longer relate to sequences.  This will check for these automatically on logout.  Alternatively this check can be run via /gs cleanorphans"] = "À medida que o GS-E é atualizado, pode haver sobras de macros que não estão mais relacionadas às sequências. Este recurso irá checar isso automaticamente no logout. Como alternativa, essa verificação pode ser executada via /gs cleanorphans"
--[[Translation missing --]]
L["Auras included in GSE Macros"] = "Auras included in GSE Macros"
L["Author"] = "Autor"
L["Author Colour"] = "Cor do Autor"
L["Auto Create Class Macro Stubs"] = "Criar Esboços de Macro para Classes Automaticamente"
L["Auto Create Global Macro Stubs"] = "Criar Esboços de Macro Globais Automaticamente"
L["Automatically Create Macro Icon"] = "Criar Ícone de Macro Automaticamente"
L["Available Addons"] = "Addons Disponíveis"
L["Belt"] = "Cinto"
L["Blizzard Functions Colour"] = "Funções de Cores da Blizzard"
L["By setting the default Icon for all macros to be the QuestionMark, the macro button on your toolbar will change every key hit."] = "Ao definir o ícone padrão para todas as macros como o Ponto de Interrogação, o botão da macro na barra de ferramentas irá mudar a cada aperto da tecla."
L["By setting this value the Sequence Editor will show every macro for every class."] = "Ao marcar esta opção, o Editor de Sequências mostrará todas as macros para todas as classes."
L["By setting this value the Sequence Editor will show every macro for your class.  Turning this off will only show the class macros for your current specialisation."] = "Ao marcar esta opção, o Editor de Sequências irá mostrar cada macro da sua classe. Desmarcando isso irá mostrar apenas as macros para a especialização atual da sua classe."
L["Cancel"] = "Cancelar"
L["CheckMacroCreated"] = "Checar Macro Criada"
--[[Translation missing --]]
L["Checks to see if you have a Heart of Azeroth equipped and if so will insert '/cast Heart Essence' into the macro.  If not your macro will skip this line."] = "Checks to see if you have a Heart of Azeroth equipped and if so will insert '/cast Heart Essence' into the macro.  If not your macro will skip this line."
L["Choose import action:"] = "Escolha a ação de importação:"
L["Choose Language"] = "Escolha o Idioma"
L["Classwide Macro"] = "Macro Para-Todas-as-Classes"
L["Clear"] = "Limpar"
L["Clear Common Keybindings"] = "Limpar Teclas de Atalho Comuns"
L["Clear Errors"] = "Limpar Erros"
L["Clear Keybindings"] = "Limpar Teclas de Atalho"
L["Close"] = "Fechar"
L["Close to Maximum Macros.|r  You can have a maximum of "] = "Perto da Quantidade Máxima de Macros.|r Você pode ter no máximo "
L["Close to Maximum Personal Macros.|r  You can have a maximum of "] = "Perto da Quantidade Máxima de Macros Pessoais.|r Você pode ter no máximo "
L["Colour"] = "Cores"
L["Colour and Accessibility Options"] = "Opções de Cor e Acessibilidade"
L["Combat"] = "Combate"
L["Command Colour"] = "Cor dos Comandos"
L["Completely New GS Macro."] = "Macro GS Completamente Nova."
L["Compress"] = "Comprimir"
L["Compress Sequence from Forums"] = "Comprimir Sequências de Fóruns"
L["Conditionals Colour"] = "Cor das Condicionais"
L["Configuration"] = "Configuração"
L["Continue"] = "Continuar"
L["Contributed by: "] = "Com Contribuição de: "
L["Control Keys."] = "Teclas Ctrl."
L["Copy this link and open it in a Browser."] = "Copie este link e abra em um Navegador."
L["Create a new macro."] = "Criar uma nova macro."
L["Create buttons for Global Macros"] = "Criar botões para Macros Globais"
L["Create Icon"] = "Criar Ícone"
L["Create Macro"] = "Criar Macro"
L[ [=[Create or remove a Macro stub in /macro that can be dragged to your action bar so that you can use this macro.
GSE can store an unlimited number of macros however WOW's /macro interface can only store a limited number of macros.]=] ] = "Cria ou remove um esboço de macro em /macro que pode ser arrastado para sua barra de ação para que você possa usar essa macro. O GSE pode armazenar um número ilimitado de macros, no entanto, a interface de /macro do WOW pode armazenar apenas um número limitado destas."
L["Creating New Sequence."] = "Criando Uma Nova Sequência."
--[[Translation missing --]]
L["Current GCD"] = "Current GCD"
--[[Translation missing --]]
L["Current GCD: %s"] = "Current GCD: %s"
L["Debug"] = "Depurar"
L["Debug Mode Options"] = "Opções do Modo de Depuração"
L["Debug Output Options"] = "Opções de Saída da Depuração"
L["Debug Sequence Execution"] = "Execução da Sequência de Depuração"
L["Decompress"] = "Descomprimir"
--[[Translation missing --]]
L["Default Editor Height"] = "Default Editor Height"
--[[Translation missing --]]
L["Default Editor Width"] = "Default Editor Width"
L["Default Import Action"] = "Ação Padrão de Importação"
L["Default Version"] = "Versão Padrão"
--[[Translation missing --]]
L["Del"] = "Del"
L["Delete"] = "Apagar"
L["Delete Icon"] = "Apagar Ícone"
L["Delete Orphaned Macros on Logout"] = "Apagar Macros Órfãs ao Sair do Jogo"
L["Delete this macro.  This is not able to be undone."] = "Apagar esta macro. Isto não pode ser desfeito."
--[[Translation missing --]]
L["Delete this variable from the sequence."] = "Delete this variable from the sequence."
L[ [=[Delete this verion of the macro.  This can be undone by closing this window and not saving the change.  
This is different to the Delete button below which will delete this entire macro.]=] ] = "Apagar esta versão da macro. Isso pode ser desfeito fechando esta janela e não salvando a alteração. Isto é diferente do botão Apagar abaixo, o qual exclui toda a macro."
--[[Translation missing --]]
L["Delete this WeakAura from the sequence."] = "Delete this WeakAura from the sequence."
--[[Translation missing --]]
L["Delete Variable"] = "Delete Variable"
L["Delete Version"] = "Apagar Versão"
--[[Translation missing --]]
L["Delete WeakAura"] = "Delete WeakAura"
L["Different helpTxt"] = "helpTxt Diferente"
L["Disable"] = "Desabilitar"
L["Disable Editor"] = "Desabilitar Editor"
L["Disable Sequence"] = "Desabilitar Sequência"
L["Display debug messages in Chat Window"] = "Mostrar mensagens de depuração na Janela do Chat"
L["Don't Translate Sequences"] = "Não Traduzir Sequências"
L["Drag this icon to your action bar to use this macro. You can change this icon in the /macro window."] = "Arraste este ícone para sua barra de ações para usar esta macro. Você pode alterar este ícone na janela /macro."
L["Dungeon"] = "Masmorra"
L["Dungeon setting changed to Default."] = "Configuração de Masmorra alterada para o Padrão."
L["Edit"] = "Editar"
L["Edit this macro.  To delete a macro, choose this edit option and then from inside hit the delete button."] = "Editar esta macro. Para apagar uma macro, escolha esta opção de edição e, ao entrar, aperte o botão de apagar."
L["Editor Colours"] = "Editor de Cores"
L["Emphasis Colour"] = "Cor da Ênfase"
L["Enable"] = "Habilitar"
L["Enable Debug for the following Modules"] = "Habilitar Depuração para os seguintes Módulos"
L["Enable Mod Debug Mode"] = "Habilitar Modo de Depuração de Mod"
L["Enable Sequence"] = "Habilitar Sequência"
L["Enable this option to stop automatically translating sequences from enUS to local language."] = "Habilite esta opção para parar tradução automática de sequências de enUS para o idioma local."
L["Enable timing functions by using Click refresh speed as a pseudo timer."] = "Habilita funções de temporização usando a velocidade de atualização de cliques como um pseudo-timer."
L["Enforce GSE minimum version for this macro"] = "Forçar versão mínima do GSE para esta macro"
L["Error found in version %i of %s."] = "Erro encontrado na versão %i de %s."
L["Export"] = "Exportar"
L["Export a Sequence"] = "Exportar a Sequência"
L["Export Macro Read Only"] = "Exportar Macro Como Somente Leitura"
L["Export this Macro."] = "Exportar esta Macro."
L["Extra Macro Versions of %s has been added."] = "Versões Extra da Macro %s foram adicionadas."
L["Filter Macro Selection"] = "Filtrar a Seleção de Macros"
L["Finished scanning for errors.  If no other messages then no errors were found."] = "Verificação de erros concluída. Se não houver outras mensagens, então nenhum erro foi encontrado."
L["Format export for WLM Forums"] = "Formato de exportação para os Fóruns do WLM"
L["FYou cannot delete this version of a sequence.  This version will be reloaded as it is contained in "] = "Você não pode apagar esta versão de uma sequência. Esta versão será recarregada assim como está incluída em "
L["Gameplay Options"] = "Opções de Jogabilidade"
L["General"] = "Geral"
L["General Options"] = "Opções Gerais"
L["Global Macros are those that are valid for all classes.  GSE2 also imports unknown macros as Global.  This option will create a button for these macros so they can be called for any class.  Having all macros in this space is a performance loss hence having them saved with a the right specialisation is important."] = "Macros Globais são aquelas válidas para todas as classes. O GSE2 também importa macros desconhecidas como Globais. Esta opção irá criar um botão para estas macros para que possam ser usadas por qualquer classe. Ter todas as macros neste espaço é uma perda de performance, portanto é importante que elas sejam salvas com a especialização correta."
L["Gnome Sequencer: Compress a Sequence String."] = "Gnome Sequencer: Comprime Códigos de Sequência."
L["Gnome Sequencer: Export a Sequence String."] = "Gnome Sequencer: Exporta Códigos de Sequência."
L["Gnome Sequencer: Import a Macro String."] = "Gnome Sequencer: Importa Códigos de Sequência."
L["Gnome Sequencer: Record your rotation to a macro."] = "Gnome Sequencer: Grava sua rotação para uma macro."
L["Gnome Sequencer: Sequence Debugger. Monitor the Execution of your Macro"] = "Gnome Sequencer: Depurador de Sequência. Monitora a Execução da sua Macro"
L["Gnome Sequencer: Sequence Editor."] = "Gnome Sequencer: Editor de Sequência."
L["Gnome Sequencer: Sequence Version Manager"] = "Gnome Sequencer: Gerenciador de Versões de Sequência"
L["Gnome Sequencer: Sequence Viewer"] = "Gnome Sequencer: Visualizador de Sequência"
L["GnomeSequencer was originally written by semlar of wowinterface.com."] = "O GnomeSequencer foi escrito originalmente por semlar do wowinterface.com."
L["GnomeSequencer-Enhanced"] = "GnomeSequencer-Enhanced"
L["GnomeSequencer-Enhanced loaded.|r  Type "] = "GnomeSequencer-Enhanced carregado.|r  Digite "
L["GSE"] = "GSE"
--[[Translation missing --]]
L["GSE - %s's Macros"] = "GSE - %s's Macros"
L["GSE allows plugins to load Macro Collections as plugins.  You can reload a collection by pressing the button below."] = "O GSE permite que os plug-ins carreguem Coleções de Macro como plug-ins. Você pode recarregar uma coleção pressionando o botão abaixo."
L["GS-E can save all macros or only those versions that you have created locally.  Turning this off will cache all macros in your WTF\\GS-Core.lua variables file but will increase load times and potentially cause colissions."] = "O GS-E pode salvar todas as macros ou apenas as versões que você criou localmente. Desativar isso armazenará em cache todas as macros no seu arquivo de variáveis WTF\\GS-Core.lua, mas aumentará o tempo de carregamento e potencialmente causará colisões."
L["GSE has a LibDataBroker (LDB) data feed.  List Other GSE Users and their version when in a group on the tooltip to this feed."] = "O GSE possui um feed de dados LibDataBroker (LDB). Lista outros usuários do GSE e sua versão, quando em um grupo, na tooltip para este feed."
L["GSE has a LibDataBroker (LDB) data feed.  Set this option to show queued Out of Combat events in the tooltip."] = "O GSE possui um feed de dados LibDataBroker (LDB). Defina esta opção para mostrar a fila de eventos Fora de Combate na tooltip."
L["GSE is a complete rewrite of that addon that allows you create a sequence of macros to be executed at the push of a button."] = "O GSE é uma reescrita completa do addon que permite criar uma sequência de macros a serem executadas com o pressionar de um botão."
L["GSE is out of date. You can download the newest version from https://mods.curse.com/addons/wow/gnomesequencer-enhanced."] = "Seu GSE está desatualizado. Você pode baixar a versão mais recente em https://www.curseforge.com/wow/addons/gse-gnome-sequencer-enhanced-advanced-macros"
L["GSE is out of date. You can download the newest version from https://www.curseforge.com/wow/addons/gse-gnome-sequencer-enhanced-advanced-macros."] = "Seu GSE está desatualizado. Você pode baixar a versão mais recente em https://www.curseforge.com/wow/addons/gse-gnome-sequencer-enhanced-advanced-macros"
L["GSE Macro"] = "Macro GSE"
L["GS-E Plugins"] = "Plug-ins GS-E"
--[[Translation missing --]]
L["GSE stores the base spell and asks WoW to use that ability.  WoW will then choose the current version of the spell.  This toggle switches between showing the Base Spell or the Current Spell."] = "GSE stores the base spell and asks WoW to use that ability.  WoW will then choose the current version of the spell.  This toggle switches between showing the Base Spell or the Current Spell."
L["GSE Users"] = "Usuários GSE"
L["GSE Version: %s"] = "Versão do GSE: %s"
L[ [=[GSE was originally forked from GnomeSequencer written by semlar.  It was enhanced by TImothyLuke to include a lot of configuration and boilerplate functionality with a GUI added.  The enhancements pushed the limits of what the original code could handle and was rewritten from scratch into GSE.

GSE itself wouldn't be what it is without the efforts of the people who write macros with it.  Check out https://wowlazymacros.com for the things that make this mod work.  Special thanks to Lutechi for creating this community.]=] ] = "O GSE foi originalmente derivado do GnomeSequencer escrito por semlar. Foi aprimorado por TImothyLuke para incluir muitas configurações e funcionalidades padrão, com uma GUI adicionada. As melhorias exigiam o máximo do que o código original suportava e foram reescritas do zero no GSE. O GSE em si não seria o que é sem os esforços das pessoas que escrevem macros com ele. Confira https://wowlazymacros.com para conhecer as coisas que fazem esse mod funcionar. Agradecimentos especiais a Lutechi por criar esta comunidade."
L["GSE: Import a Macro String."] = "GSE: Importando um Código de Macro."
L["GSE: Left Click to open the Sequence Editor"] = "GSE: Clique para abrir o Editor de Sequências"
L["GS-E: Left Click to open the Sequence Editor"] = "GS-E: Clique para abrir o Editor de Sequências"
L["GSE: Middle Click to open the Transmission Interface"] = "GSE: Clique com o Botão do Meio do Mouse para abrir a Interface de Transmissão"
L["GS-E: Middle Click to open the Transmission Interface"] = "GS-E: Clique com o Botão do Meio do Mouse para abrir a Interface de Transmissão"
L["GSE: Right Click to open the Sequence Debugger"] = "GSE: Clique com o Botão Direito do Mouse para abrir o Depurador de Sequências"
L["GS-E: Right Click to open the Sequence Debugger"] = "GS-E: Clique com o Botão Direito do Mouse para abrir o Depurador de Sequências"
L["Head"] = "Cabeça"
L["Help Colour"] = "Cor da Ajuda"
L["Help Information"] = "Informações de Ajuda"
L["Help Link"] = "Link de Ajuda"
L["Help URL"] = "URL da Ajuda"
L["Heroic"] = "Heroico"
L["Heroic setting changed to Default."] = "Configuração de Heroicos alterada para o Padrão."
L["Hide Login Message"] = "Esconder Mensagem de Entrada"
L["Hide Minimap Icon"] = "Esconder o Botão do Minimapa"
L["Hide Minimap Icon for LibDataBroker (LDB) data text."] = "Esconder o Ícone de Minimapa para o texto de dados do LibDataBroker (LDB)"
L["Hides the message that GSE is loaded."] = "Esconde a mensagem de GSE carregado."
L["History"] = "Histórico"
--[[Translation missing --]]
L["How many pixels high should the Editor start at.  Defaults to 700"] = "How many pixels high should the Editor start at.  Defaults to 700"
--[[Translation missing --]]
L["How many pixels wide should the Editor start at.  Defaults to 700"] = "How many pixels wide should the Editor start at.  Defaults to 700"
L["Icon Colour"] = "Cor do Ícone"
L["If you load Gnome Sequencer - Enhanced and the Sequence Editor and want to create new macros from scratch, this will enable a first cut sequenced template that you can load into the editor as a starting point.  This enables a Hello World macro called Draik01.  You will need to do a /console reloadui after this for this to take effect."] = "Se você carregar o Gnome Sequencer - Enhanced e o Editor de Sequências e quiser criar novas macros do zero, isso permitirá um primeiro modelo de sequência que você pode carregar no editor como ponto de partida. Isto habilita uma macro Hello World chamada Draik01. Você precisará fazer um /console reloadui depois disso para que isto entre em vigor."
L["Ignore"] = "Ignorar"
L["Import"] = "Importar"
L["Import Macro from Forums"] = "Importar Macros dos Fóruns"
L["Imported new sequence "] = "Nova sequência importada "
L["Incorporate the belt slot into the KeyRelease. This is the equivalent of /use [combat] 5 in a KeyRelease."] = "Incorpora o slot do cinto na SoltarTecla. Isto é equivalente ao /use [combat] 5 em uma SoltarTecla."
L["Incorporate the first ring slot into the KeyRelease. This is the equivalent of /use [combat] 11 in a KeyRelease."] = "Incorpora o slot do primeiro anel na SoltarTecla. Isto é equivalente ao /use [combat] 11 em uma SoltarTecla."
L["Incorporate the first trinket slot into the KeyRelease. This is the equivalent of /use [combat] 13 in a KeyRelease."] = "Incorpora o slot do primeiro berloque na SoltarTecla. Isto é equivalente ao /use [combat] 13 em uma SoltarTecla."
L["Incorporate the Head slot into the KeyRelease. This is the equivalent of /use [combat] 1 in a KeyRelease."] = "Incorpora o slot da cabeça na SoltarTecla. Isto é equivalente ao /use [combat] 1 em uma SoltarTecla."
L["Incorporate the neck slot into the KeyRelease. This is the equivalent of /use [combat] 2 in a KeyRelease."] = "Incorpora o slot do pescoço na SoltarTecla. Isto é equivalente ao /use [combat] 2 em uma SoltarTecla."
L["Incorporate the second ring slot into the KeyRelease. This is the equivalent of /use [combat] 12 in a KeyRelease."] = "Incorpora o slot do segundo anel na SoltarTecla. Isto é equivalente ao /use [combat] 12 em uma SoltarTecla."
L["Incorporate the second trinket slot into the KeyRelease. This is the equivalent of /use [combat] 14 in a KeyRelease."] = "Incorpora o slot do segundo berloque na SoltarTecla. Isto é equivalente ao /use [combat] 14 em uma SoltarTecla."
L["Inner Loop End"] = "Fim do Ciclo Interno"
L["Inner Loop Limit"] = "Limite do Ciclo Interno"
L[ [=[Inner Loop Limit controls how many times the Sequence part of your macro executes 
until it goes onto to the PostMacro and then resets to the PreMacro.]=] ] = "O Limite do Ciclo Interno controla quantas vezes a parte da Sequência da sua macro executa até ir para a PósMacro e então reinicia para a PréMacro."
L["Inner Loop Start"] = "Início do Ciclo Interno"
L["KeyPress"] = "ApertarTecla"
L["KeyRelease"] = "SoltarTecla"
L["Language"] = "Idioma"
L["Language Colour"] = "Cor do Idioma"
L["Left Alt Key"] = "Tecla Alt Esquerda"
L["Left Control Key"] = "Tecla Ctrl Esquerda"
L["Left Mouse Button"] = "Botão Esquerdo do Mouse"
L["Left Shift Key"] = "Tecla Shift Esquerda"
L["Legacy GS/GSE1 Macro"] = "Macro Legado de GS/GSE1"
L["Like a /castsequence macro, it cycles through a series of commands when the button is pushed. However, unlike castsequence, it uses macro text for the commands instead of spells, and it advances every time the button is pushed instead of stopping when it can't cast something."] = "Como uma macro /castsequence, ele percorre uma série de comandos quando o botão é pressionado. No entanto, diferentemente da castsequence, ele usa o texto da macro para os comandos, em vez de feitiços, e avança toda vez que o botão é pressionado em vez de parar quando não é possível executar algo."
L["Load"] = "Carregar"
--[[Translation missing --]]
L["Load or update this WeakAura into WeakAuras."] = "Load or update this WeakAura into WeakAuras."
L["Load Sequence"] = "Carregar Sequência"
--[[Translation missing --]]
L["Load WeakAura"] = "Load WeakAura"
L["Local Macro"] = "Macro Local"
L["Macro Collection to Import."] = "Coleção de Macro para Importar."
L["Macro found by the name %sPVP%s. Rename this macro to a different name to be able to use it.  WOW has a global object called PVP that is referenced instead of this macro."] = "Macro encontrada pelo nome%sPVP%s. Renomeie essa macro para um nome diferente para poder usá-la. O WOW possui um objeto global chamado PVP que é referenciado em vez dessa macro."
L["Macro found by the name %sWW%s. Rename this macro to a different name to be able to use it.  WOW has a hidden button called WW that is executed instead of this macro."] = "Macro encontrada pelo nome%sWW%s. Renomeie essa macro para um nome diferente para poder usá-la. O WOW possui um botão escondido chamado WW que é executado em vez dessa macro."
L["Macro Icon"] = "Ícone da Macro"
L["Macro Import Successful."] = "Importação de Macro com Sucesso."
L["Macro Reset"] = "Redefinir Macro"
L["Macro unable to be imported."] = "Não foi possível importar a macro."
--[[Translation missing --]]
L["Macro Variables"] = "Macro Variables"
L["Macro Version %d deleted."] = "Versão %d da Macro apagada."
L["Make Active"] = "Tornar Ativa"
L["Manage Versions"] = "Gerenciar Versões"
L["Matching helpTxt"] = "helpTxt Correspondente"
L["Merge"] = "Fundir"
L["MergeSequence"] = "FundirSequência"
--[[Translation missing --]]
L["Middle Mouse Button"] = "Middle Mouse Button"
--[[Translation missing --]]
L["Millisecond click settings"] = "Millisecond click settings"
--[[Translation missing --]]
L["Mouse Button 4"] = "Mouse Button 4"
--[[Translation missing --]]
L["Mouse Button 5"] = "Mouse Button 5"
--[[Translation missing --]]
L["Mouse Buttons."] = "Mouse Buttons."
--[[Translation missing --]]
L["Moved %s to class %s."] = "Moved %s to class %s."
--[[Translation missing --]]
L["MS Click Rate"] = "MS Click Rate"
L["Mythic"] = "Mítico"
--[[Translation missing --]]
L["Mythic setting changed to Default."] = "Mythic setting changed to Default."
--[[Translation missing --]]
L["Mythic+"] = "Mythic+"
--[[Translation missing --]]
L["Mythic+ setting changed to Default."] = "Mythic+ setting changed to Default."
--[[Translation missing --]]
L["Name"] = "Name"
L["Neck"] = "Colar"
L["New"] = "Novo"
L["New Sequence Name"] = "Novo Nome de Sequência"
L["No"] = "Não"
L["No Active Version"] = "Versão não ativada."
--[[Translation missing --]]
L["No changes were made to "] = "No changes were made to "
L["No Help Information "] = "Sem Informações de Ajuda"
L["No Help Information Available"] = "Sem Informações de Ajuda Disponíveis"
--[[Translation missing --]]
L["No Sample Macros are available yet for this class."] = "No Sample Macros are available yet for this class."
L["No Sequences present so none displayed in the list."] = "Sem sequências presentes, então nenhuma a listar."
L["Normal Colour"] = "Cor Normal"
L["Notes and help on how this macro works.  What things to remember.  This information is shown in the sequence browser."] = "Notas e ajuda para o funcionamento desta macro. Coisas para lembrar. Esta informação é mostrada no navegador de sequências."
--[[Translation missing --]]
L["Only Save Local Macros"] = "Only Save Local Macros"
--[[Translation missing --]]
L["Opens the GSE Options window"] = "Opens the GSE Options window"
--[[Translation missing --]]
L["openviewer"] = "Open Viewer"
L["Options"] = "Opções"
--[[Translation missing --]]
L["Options have been reset to defaults."] = "Options have been reset to defaults."
L["Output"] = "Saída"
L["Output the action for each button press to verify StepFunction and spell availability."] = "Dar saída da ação para cada botão pressionado para verificar a Função de Etapa e a disponibilidade do feitiço."
--[[Translation missing --]]
L["Party"] = "Party"
--[[Translation missing --]]
L["Party setting changed to Default."] = "Party setting changed to Default."
L["Pause"] = "Pausa"
--[[Translation missing --]]
L["Paused"] = "Paused"
--[[Translation missing --]]
L["Paused - In Combat"] = "Paused - In Combat"
L["Picks a Custom Colour for emphasis."] = "Escolha uma Cor Personalizada para ênfases."
L["Picks a Custom Colour for the Author."] = "Escolha uma Cor Personalizada para o Autor."
L["Picks a Custom Colour for the Commands."] = "Escolha uma Cor Personalizada para os Comandos"
L["Picks a Custom Colour for the Mod Names."] = "Escolha uma Cor Personalizada para os Nomes de Mods"
L["Picks a Custom Colour to be used for braces and indents."] = "Escolha uma Cor Personalizada para ser usada por chaves e recuos."
L["Picks a Custom Colour to be used for Icons."] = "Escolha uma Cor Personalizada para ser usada por ícones."
L["Picks a Custom Colour to be used for language descriptors"] = "Escolha uma Cor Personalizada para ser usada por descritores de linguagens."
L["Picks a Custom Colour to be used for macro conditionals eg [mod:shift]"] = "Escolha uma Cor Personalizada para ser usada por condicionais de macros, por ex. [mod:shift]"
L["Picks a Custom Colour to be used for Macro Keywords like /cast and /target"] = "Escolha uma Cor Personalizada para ser usada por Palavras-chave de Macros, como /cast e /target"
L["Picks a Custom Colour to be used for numbers."] = "Escolha uma Cor Personalizada para ser usada por números."
L["Picks a Custom Colour to be used for Spells and Abilities."] = "Escolha uma Cor Personalizada para ser usada por Feitiços e Habilidades."
L["Picks a Custom Colour to be used for StepFunctions."] = "Escolha uma Cor Personalizada para ser usada por Funções de Etapa."
L["Picks a Custom Colour to be used for strings."] = "Escolha uma Cor Personalizada para ser usada por códigos."
L["Picks a Custom Colour to be used for unknown terms."] = "Escolha uma Cor Personalizada para uso em termos desconhecidos."
L["Picks a Custom Colour to be used normally."] = "Escolha uma Cor Personalizada para ser usada normalmente."
L["Please wait till you have left combat before using the Sequence Editor."] = "Por favor, aguarde até você ter saído de combate, antes de usar o Editor de Sequências."
--[[Translation missing --]]
L["Plugins"] = "Plugins"
--[[Translation missing --]]
L["PostMacro"] = "PostMacro"
--[[Translation missing --]]
L["PreMacro"] = "PreMacro"
--[[Translation missing --]]
L["Prevent Sound Errors"] = "Prevent Sound Errors"
--[[Translation missing --]]
L["Prevent UI Errors"] = "Prevent UI Errors"
--[[Translation missing --]]
L["Print KeyPress Modifiers on Click"] = "Print KeyPress Modifiers on Click"
--[[Translation missing --]]
L["Print to the chat window if the alt, shift, control modifiers as well as the button pressed on each macro keypress."] = "Print to the chat window if the alt, shift, control modifiers as well as the button pressed on each macro keypress."
L["Priority List (1 12 123 1234)"] = "Lista de Prioridade (1 12 123 1234)"
--[[Translation missing --]]
L["Prompt Samples"] = "Prompt Samples"
--[[Translation missing --]]
L["PVP"] = "PVP"
--[[Translation missing --]]
L["PVP setting changed to Default."] = "PVP setting changed to Default."
L["Raid"] = "Raide"
--[[Translation missing --]]
L["Raid setting changed to Default."] = "Raid setting changed to Default."
L["Random - It will select .... a spell, any spell"] = "Aleatória - irá escolher .... um feitiço, qualquer feitiço"
--[[Translation missing --]]
L["Rank"] = "Rank"
--[[Translation missing --]]
L["Ready to Send"] = "Ready to Send"
L["Received Sequence "] = "Sequência Recebida"
L["Record"] = "Gravada"
L["Record Macro"] = "Macro Gravada"
--[[Translation missing --]]
L["Record the spells and items you use into a new macro."] = "Record the spells and items you use into a new macro."
L["Registered Addons"] = "Addons Registrados"
--[[Translation missing --]]
L["Rename New Macro"] = "Rename New Macro"
--[[Translation missing --]]
L["Replace"] = "Replace"
--[[Translation missing --]]
L["Request Macro"] = "Request Macro"
--[[Translation missing --]]
L["Request that the user sends you a copy of this macro."] = "Request that the user sends you a copy of this macro."
--[[Translation missing --]]
L["Require Target to use"] = "Require Target to use"
--[[Translation missing --]]
L["Reset Macro when out of combat"] = "Reset Macro when out of combat"
--[[Translation missing --]]
L["Reset this macro when you exit combat."] = "Reset this macro when you exit combat."
L["Resets"] = "Reiniciar"
--[[Translation missing --]]
L["Resets macros back to the initial state when out of combat."] = "Resets macros back to the initial state when out of combat."
L["Resume"] = "Resumo"
--[[Translation missing --]]
L["Returns your current Global Cooldown value accounting for your haste if that stat is present."] = "Returns your current Global Cooldown value accounting for your haste if that stat is present."
--[[Translation missing --]]
L["Right Alt Key"] = "Right Alt Key"
--[[Translation missing --]]
L["Right Control Key"] = "Right Control Key"
--[[Translation missing --]]
L["Right Mouse Button"] = "Right Mouse Button"
--[[Translation missing --]]
L["Right Shift Key"] = "Right Shift Key"
L["Ring 1"] = "Anel 1"
L["Ring 2"] = "Anel 2"
--[[Translation missing --]]
L["Running"] = "Running"
L["Save"] = "Salvar"
--[[Translation missing --]]
L["Save the changes made to this macro"] = "Save the changes made to this macro"
--[[Translation missing --]]
L["Scenario"] = "Scenario"
--[[Translation missing --]]
L["Scenario setting changed to Default."] = "Scenario setting changed to Default."
--[[Translation missing --]]
L["Seed Initial Macro"] = "Seed Initial Macro"
--[[Translation missing --]]
L["Select a Sequence"] = "Select a Sequence"
--[[Translation missing --]]
L["Select Other Version"] = "Select Other Version"
L["Send"] = "Enviar"
--[[Translation missing --]]
L["Send this macro to another GSE player who is on the same server as you are."] = "Send this macro to another GSE player who is on the same server as you are."
L["Send To"] = "Enviar Para"
L["Sequence"] = "Sequência"
L["Sequence %s saved."] = "Sequência %s salva."
L["Sequence Author set to Unknown"] = "Autor da Sequência definido como Desconhecido"
L["Sequence Compare"] = "Comparador de Sequências"
L["Sequence Debugger"] = "Depurador de Sequências"
L["Sequence Editor"] = "Editor de Sequências"
L["Sequence Name"] = "Nome da Sequência"
--[[Translation missing --]]
L["Sequence Name %s is in Use. Please choose a different name."] = "Sequence Name %s is in Use. Please choose a different name."
--[[Translation missing --]]
L["Sequence Named %s was not specifically designed for this version of the game.  It may need adjustments."] = "Sequence Named %s was not specifically designed for this version of the game.  It may need adjustments."
--[[Translation missing --]]
L["Sequence Saved as version "] = "Sequence Saved as version "
--[[Translation missing --]]
L["Sequence specID set to current spec of "] = "Sequence specID set to current spec of "
--[[Translation missing --]]
L["Sequence to Compress."] = "Sequence to Compress."
L["Sequence Viewer"] = "Visualizador de Sequências"
L["Sequential (1 2 3 4)"] = "Sequencial (1 2 3 4)"
--[[Translation missing --]]
L["Set Default Icon QuestionMark"] = "Set Default Icon QuestionMark"
--[[Translation missing --]]
L["Shift Keys."] = "Shift Keys."
--[[Translation missing --]]
L["Show All Macros in Editor"] = "Show All Macros in Editor"
--[[Translation missing --]]
L["Show Class Macros in Editor"] = "Show Class Macros in Editor"
--[[Translation missing --]]
L["Show Current Spells"] = "Show Current Spells"
--[[Translation missing --]]
L["Show Global Macros in Editor"] = "Show Global Macros in Editor"
--[[Translation missing --]]
L["Show GSE Users in LDB"] = "Show GSE Users in LDB"
--[[Translation missing --]]
L["Show OOC Queue in LDB"] = "Show OOC Queue in LDB"
--[[Translation missing --]]
L["Show the current value of this variable."] = "Show the current value of this variable."
--[[Translation missing --]]
L["Source Language "] = "Source Language "
--[[Translation missing --]]
L["Specialisation / Class ID"] = "Specialisation / Class ID"
--[[Translation missing --]]
L["Specialization Specific Macro"] = "Specialization Specific Macro"
L["SpecID/ClassID Colour"] = "Cor do SpecID/ClassID"
L["Spell Colour"] = "Cor do Feitiço"
L["Step Function"] = "Função de Etapa"
L["Step Functions"] = "Funções de Etapa"
L["Stop"] = "Parar"
--[[Translation missing --]]
L["Store Debug Messages"] = "Store Debug Messages"
--[[Translation missing --]]
L["Store output of debug messages in a Global Variable that can be referrenced by other mods."] = "Store output of debug messages in a Global Variable that can be referrenced by other mods."
L["String Colour"] = "Cor do Código"
--[[Translation missing --]]
L["Supporters"] = "Supporters"
--[[Translation missing --]]
L["System Variables"] = "System Variables"
L["Talents"] = "Talentos"
L["Target"] = "Alvo"
L["Target language "] = "Linguagem do Alvo"
--[[Translation missing --]]
L["Target protection is currently %s"] = "Target protection is currently %s"
--[[Translation missing --]]
L["Test Variable"] = "Test Variable"
--[[Translation missing --]]
L["The author of this macro."] = "The author of this macro."
--[[Translation missing --]]
L["The command "] = "The command "
--[[Translation missing --]]
L["The current result of variable |cff0000ff~~%s~~|r is |cFF00D1FF%s|r"] = "The current result of variable |cff0000ff~~%s~~|r is |cFF00D1FF%s|r"
L["The Custom StepFunction Specified is not recognised and has been ignored."] = "A Função de Etapa Personalizada Especificada não é reconhecida e foi ignorada."
--[[Translation missing --]]
L["The following people donate monthly via Patreon for the ongoing maintenance and development of GSE.  Their support is greatly appreciated."] = "The following people donate monthly via Patreon for the ongoing maintenance and development of GSE.  Their support is greatly appreciated."
--[[Translation missing --]]
L["The GSE Out of Combat queue is %s"] = "The GSE Out of Combat queue is %s"
--[[Translation missing --]]
L["The GUI has not been loaded.  Please activate this plugin amongst WoW's addons to use the GSE GUI."] = "The GUI has not been loaded.  Please activate this plugin amongst WoW's addons to use the GSE GUI."
L["The Macro Translator will translate an English sequence to your local language for execution.  It can also be used to translate a sequence into a different language.  It is also used for syntax based colour markup of Sequences in the editor."] = "O Tradutor de Macro traduzirá uma sequência em inglês para o idioma local para execução. Também pode ser usado para traduzir uma sequência para um idioma diferente. Também é usado para marcação de cores baseada em sintaxe de Sequências no editor."
--[[Translation missing --]]
L["The main lines of the macro."] = "The main lines of the macro."
--[[Translation missing --]]
L["The milliseconds being used in key click delay."] = "The milliseconds being used in key click delay."
--[[Translation missing --]]
L[ [=[The name of your macro.  This name has to be unique and can only be used for one object.
You can copy this entire macro by changing the name and choosing Save.]=] ] = [=[The name of your macro.  This name has to be unique and can only be used for one object.
You can copy this entire macro by changing the name and choosing Save.]=]
--[[Translation missing --]]
L["The Sample Macros have been reloaded."] = "The Sample Macros have been reloaded."
--[[Translation missing --]]
L["The Sequence Editor can attempt to parse the Sequences, KeyPress and KeyRelease in realtime.  This is still experimental so can be turned off."] = "The Sequence Editor can attempt to parse the Sequences, KeyPress and KeyRelease in realtime.  This is still experimental so can be turned off."
--[[Translation missing --]]
L["The Sequence Editor is an addon for GnomeSequencer-Enhanced that allows you to view and edit Sequences in game.  Type "] = "The Sequence Editor is an addon for GnomeSequencer-Enhanced that allows you to view and edit Sequences in game.  Type "
L[ [=[The step function determines how your macro executes.  Each time you click your macro GSE will go to the next line.  
The next line it chooses varies.  If Random then it will choose any line.  If Sequential it will go to the next line.  
If Priority it will try some spells more often than others.]=] ] = "A função de etapas determina como sua macro é executada. Cada vez que você clica na sua macro, o GSE passa para a próxima linha. A próxima linha que ele escolhe varia. Se for Aleatória, ele escolherá qualquer linha. Se Sequencial, passará para a próxima linha. Se for Lista de Prioridade tentará alguns feitiços com mais frequência do que outros."
--[[Translation missing --]]
L["The version of this macro that will be used when you enter raids."] = "The version of this macro that will be used when you enter raids."
--[[Translation missing --]]
L["The version of this macro that will be used where no other version has been configured."] = "The version of this macro that will be used where no other version has been configured."
--[[Translation missing --]]
L["The version of this macro to use in Arenas.  If this is not specified, GSE will look for a PVP version before the default."] = "The version of this macro to use in Arenas.  If this is not specified, GSE will look for a PVP version before the default."
--[[Translation missing --]]
L["The version of this macro to use in heroic dungeons."] = "The version of this macro to use in heroic dungeons."
--[[Translation missing --]]
L["The version of this macro to use in Mythic Dungeons."] = "The version of this macro to use in Mythic Dungeons."
--[[Translation missing --]]
L["The version of this macro to use in Mythic+ Dungeons."] = "The version of this macro to use in Mythic+ Dungeons."
--[[Translation missing --]]
L["The version of this macro to use in normal dungeons."] = "The version of this macro to use in normal dungeons."
--[[Translation missing --]]
L["The version of this macro to use in PVP."] = "The version of this macro to use in PVP."
--[[Translation missing --]]
L["The version of this macro to use in Scenarios."] = "The version of this macro to use in Scenarios."
--[[Translation missing --]]
L["The version of this macro to use when in a party in the world."] = "The version of this macro to use when in a party in the world."
--[[Translation missing --]]
L["The version of this macro to use when in time walking dungeons."] = "The version of this macro to use when in time walking dungeons."
--[[Translation missing --]]
L["There are %i events in out of combat queue"] = "There are %i events in out of combat queue"
--[[Translation missing --]]
L["There are no events in out of combat queue"] = "There are no events in out of combat queue"
L["There are No Macros Loaded for this class.  Would you like to load the Sample Macro?"] = "Não há Macros Carregadas para esta classe. Gostaria de carregar uma Macro de Exemplo?"
--[[Translation missing --]]
L["There is an issue with sequence %s.  It has not been loaded to prevent the mod from failing."] = "There is an issue with sequence %s.  It has not been loaded to prevent the mod from failing."
L[ [=[These lines are executed after the lines in the Sequence Box have been repeated Inner Loop Limit number of times.  If an Inner Loop Limit is not set, these are never executed as the sequence will never stop repeating.
The Sequence will then go on to the PreMacro if it exists then back to the Sequence.]=] ] = "Essas linhas são executadas depois que as linhas na Caixa de Sequências forem repetidas pelas vezes definidas no Limite do Ciclo Interno. Se um Limite do Ciclo Interno não for definido, isto nunca será executado, pois a sequência nunca irá parar de repetir. A Sequência irá para o PréMacro, se este existir, e então retornará à Sequência."
L[ [=[These lines are executed before the lines in the Sequence Box.  If an Inner Loop Limit is not set, these are executed only once.  
If an Inner Loop Limit has been set these are executed after the Sequence has been looped through the number of times.  
The Sequence will then go on to the Post Macro if it exists then back to the PreMacro.]=] ] = "Estas linhas são executadas antes das linhas na Caixa de Sequências. Se um Limite do Ciclo Interno não for definido, elas serão executadas apenas uma vez. Se um Limite do Ciclo Interno tiver sido definido, elas serão executadas após a Sequência ter sido repetida por esse número de vezes. A Sequência continuará então para o PósMacro, se este existir, e voltará para o PréMacro."
L["These lines are executed every time you click this macro.  They are evaluated by WOW after the line in the Sequence Box."] = "Estas linhas são executadas toda vez que você clica nesta macro. Elas são avaliadas pelo WOW após as linhas na Caixa de Sequências."
L["These lines are executed every time you click this macro.  They are evaluated by WOW before the line in the Sequence Box."] = "Estas linhas são executadas toda vez que você clica nesta macro. Elas são avaliadas pelo WOW antes das linhas na Caixa de Sequências. "
--[[Translation missing --]]
L["These options combine to allow you to reset a macro while it is running.  These options are Cumulative ie they add to each other.  Options Like LeftClick and RightClick won't work together very well."] = "These options combine to allow you to reset a macro while it is running.  These options are Cumulative ie they add to each other.  Options Like LeftClick and RightClick won't work together very well."
--[[Translation missing --]]
L["These tick boxes have three settings for each slot.  Gold = Definately use this item. Blank = Do not use this item automatically.  Silver = Either use or not based on my default settings store in GSE's Options."] = "These tick boxes have three settings for each slot.  Gold = Definately use this item. Blank = Do not use this item automatically.  Silver = Either use or not based on my default settings store in GSE's Options."
--[[Translation missing --]]
L["This change will not come into effect until you save this macro."] = "This change will not come into effect until you save this macro."
--[[Translation missing --]]
L["This function will remove the SHIFT+N, ALT+N and CTRL+N keybindings for this character.  Useful if [mod:shift] etc conditions don't work in game."] = "This function will remove the SHIFT+N, ALT+N and CTRL+N keybindings for this character.  Useful if [mod:shift] etc conditions don't work in game."
--[[Translation missing --]]
L["This function will update macro stubs to support listening to the options below.  This is required to be completed 1 time per character."] = "This function will update macro stubs to support listening to the options below.  This is required to be completed 1 time per character."
--[[Translation missing --]]
L["This is a small addon that allows you create a sequence of macros to be executed at the push of a button."] = "This is a small addon that allows you create a sequence of macros to be executed at the push of a button."
--[[Translation missing --]]
L["This is the only version of this macro.  Delete the entire macro to delete this version."] = "This is the only version of this macro.  Delete the entire macro to delete this version."
--[[Translation missing --]]
L["This macro uses features that are not available in this version. You need to update GSE to %s in order to use this macro."] = "This macro uses features that are not available in this version. You need to update GSE to %s in order to use this macro."
--[[Translation missing --]]
L["This option clears errors and stack traces ingame.  This is the equivalent of /run UIErrorsFrame:Clear() in a KeyRelease.  Turning this on will trigger a Scam warning about running custom scripts."] = "This option clears errors and stack traces ingame.  This is the equivalent of /run UIErrorsFrame:Clear() in a KeyRelease.  Turning this on will trigger a Scam warning about running custom scripts."
--[[Translation missing --]]
L["This option dumps extra trace information to your chat window to help troubleshoot problems with the mod"] = "This option dumps extra trace information to your chat window to help troubleshoot problems with the mod"
--[[Translation missing --]]
L["This option hide error sounds like \"That is out of range\" from being played while you are hitting a GS Macro.  This is the equivalent of /console Sound_EnableErrorSpeech lines within a Sequence.  Turning this on will trigger a Scam warning about running custom scripts."] = "This option hide error sounds like \"That is out of range\" from being played while you are hitting a GS Macro.  This is the equivalent of /console Sound_EnableErrorSpeech lines within a Sequence.  Turning this on will trigger a Scam warning about running custom scripts."
--[[Translation missing --]]
L["This option hides text error popups and dialogs and stack traces ingame.  This is the equivalent of /script UIErrorsFrame:Hide() in a KeyRelease.  Turning this on will trigger a Scam warning about running custom scripts."] = "This option hides text error popups and dialogs and stack traces ingame.  This is the equivalent of /script UIErrorsFrame:Hide() in a KeyRelease.  Turning this on will trigger a Scam warning about running custom scripts."
--[[Translation missing --]]
L["This option prevents macros firing unless you have a target. Helps reduce mistaken targeting of other mobs/groups when your target dies."] = "This option prevents macros firing unless you have a target. Helps reduce mistaken targeting of other mobs/groups when your target dies."
--[[Translation missing --]]
L["This sequence is Read Only and unable to be edited."] = "This sequence is Read Only and unable to be edited."
--[[Translation missing --]]
L["This Sequence was exported from GSE %s."] = "This Sequence was exported from GSE %s."
--[[Translation missing --]]
L["This shows the Global Macros available as well as those for your class."] = "This shows the Global Macros available as well as those for your class."
--[[Translation missing --]]
L["This version has been modified by TimothyLuke to make the power of GnomeSequencer avaialble to people who are not comfortable with lua programming."] = "This version has been modified by TimothyLuke to make the power of GnomeSequencer avaialble to people who are not comfortable with lua programming."
--[[Translation missing --]]
L["This will display debug messages for the "] = "This will display debug messages for the "
--[[Translation missing --]]
L["This will display debug messages for the GS-E Ingame Transmission and transfer"] = "This will display debug messages for the GS-E Ingame Transmission and transfer"
--[[Translation missing --]]
L["This will display debug messages in the Chat window."] = "This will display debug messages in the Chat window."
--[[Translation missing --]]
L["Timewalking"] = "Timewalking"
--[[Translation missing --]]
L["Timewalking setting changed to Default."] = "Timewalking setting changed to Default."
L["Title Colour"] = "Cor do Título"
--[[Translation missing --]]
L["To correct this either delete the version via the GSE Editor or enter the following command to delete this macro totally.  %s/run GSE.DeleteSequence (%i, %s)%s"] = "To correct this either delete the version via the GSE Editor or enter the following command to delete this macro totally.  %s/run GSE.DeleteSequence (%i, %s)%s"
--[[Translation missing --]]
L["To get started "] = "To get started "
--[[Translation missing --]]
L["To use a macro, open the macros interface and create a macro with the exact same name as one from the list.  A new macro with two lines will be created and place this on your action bar."] = "To use a macro, open the macros interface and create a macro with the exact same name as one from the list.  A new macro with two lines will be created and place this on your action bar."
--[[Translation missing --]]
L["Translate to"] = "Translate to"
--[[Translation missing --]]
L["Translated Sequence"] = "Translated Sequence"
L["Trinket 1"] = "Berloque 1"
L["Trinket 2"] = "Berloque 2"
--[[Translation missing --]]
L["Two sequences with unknown sources found."] = "Two sequences with unknown sources found."
--[[Translation missing --]]
L["Unable to interpret sequence."] = "Unable to interpret sequence."
L["Unknown Author|r "] = "Autor Desconhecido|r "
L["Unknown Colour"] = "Cor de Desconhecido"
--[[Translation missing --]]
L["Update"] = "Update"
--[[Translation missing --]]
L["Update Macro Stubs"] = "Update Macro Stubs"
--[[Translation missing --]]
L["Update Macro Stubs."] = "Update Macro Stubs."
--[[Translation missing --]]
L["Updated Macro"] = "Updated Macro"
--[[Translation missing --]]
L["UpdateSequence"] = "Update Sequence"
--[[Translation missing --]]
L["Updating due to new version."] = "Updating due to new version."
L["Use"] = "Usar"
--[[Translation missing --]]
L["Use Belt Item in KeyRelease"] = "Use Belt Item in KeyRelease"
--[[Translation missing --]]
L["Use External MS Timings"] = "Use External MS Timings"
--[[Translation missing --]]
L["Use First Ring in KeyRelease"] = "Use First Ring in KeyRelease"
--[[Translation missing --]]
L["Use First Trinket in KeyRelease"] = "Use First Trinket in KeyRelease"
--[[Translation missing --]]
L["Use Global Account Macros"] = "Use Global Account Macros"
--[[Translation missing --]]
L["Use Head Item in KeyRelease"] = "Use Head Item in KeyRelease"
--[[Translation missing --]]
L["Use Macro Translator"] = "Use Macro Translator"
--[[Translation missing --]]
L["Use Neck Item in KeyRelease"] = "Use Neck Item in KeyRelease"
--[[Translation missing --]]
L["Use Realtime Parsing"] = "Use Realtime Parsing"
--[[Translation missing --]]
L["Use Second Ring in KeyRelease"] = "Use Second Ring in KeyRelease"
--[[Translation missing --]]
L["Use Second Trinket in KeyRelease"] = "Use Second Trinket in KeyRelease"
--[[Translation missing --]]
L["Use Verbose Export Sequence Format"] = "Use Verbose Export Sequence Format"
--[[Translation missing --]]
L["Use WLM Export Sequence Format"] = "Use WLM Export Sequence Format"
--[[Translation missing --]]
L["Value"] = "Value"
--[[Translation missing --]]
L["Variables"] = "Variables"
--[[Translation missing --]]
L["Version"] = "Version"
L["Version="] = "Versão="
--[[Translation missing --]]
L["WARNING ONLY"] = "WARNING ONLY"
--[[Translation missing --]]
L["WeakAuras"] = "WeakAuras"
--[[Translation missing --]]
L["WeakAuras is a mod that watches for certain conditions and actions and they alerts the player to them occuring.  These are included for convenience and still need to be copied from here and imported to the WeakAuras mod via the command /wa."] = "WeakAuras is a mod that watches for certain conditions and actions and they alerts the player to them occuring.  These are included for convenience and still need to be copied from here and imported to the WeakAuras mod via the command /wa."
--[[Translation missing --]]
L["WeakAuras was not found."] = "WeakAuras was not found."
--[[Translation missing --]]
L["WeakAuras was not found.  Reported error was %s"] = "WeakAuras was not found.  Reported error was %s"
--[[Translation missing --]]
L["Website or forum URL where a player can get more information or ask questions about this macro."] = "Website or forum URL where a player can get more information or ask questions about this macro."
--[[Translation missing --]]
L[ [=[What are the preferred talents for this macro?
'1,2,3,1,2,3,1' means First row choose the first talent, Second row choose the second talent etc]=] ] = [=[What are the preferred talents for this macro?
'1,2,3,1,2,3,1' means First row choose the first talent, Second row choose the second talent etc]=]
--[[Translation missing --]]
L["What class or spec is this macro for?  If it is for all classes choose Global."] = "What class or spec is this macro for?  If it is for all classes choose Global."
--[[Translation missing --]]
L["When creating a macro, if there is not a personal character macro space, create an account wide macro."] = "When creating a macro, if there is not a personal character macro space, create an account wide macro."
--[[Translation missing --]]
L["When exporting a sequence create a stub entry to import for WLM's Website."] = "When exporting a sequence create a stub entry to import for WLM's Website."
--[[Translation missing --]]
L["When exporting a sequence use a human readable verbose form."] = "When exporting a sequence use a human readable verbose form."
--[[Translation missing --]]
L["When GSE imports a macro and it already exists locally and has local edits, what do you want the default action to be.  Merge - Add the new MacroVersions to the existing Macro.  Replace - Replace the existing macro with the new version. Ignore - ignore updates.  This default action will set the default on the Compare screen however if the GUI is not available this will be the action taken."] = "When GSE imports a macro and it already exists locally and has local edits, what do you want the default action to be.  Merge - Add the new MacroVersions to the existing Macro.  Replace - Replace the existing macro with the new version. Ignore - ignore updates.  This default action will set the default on the Compare screen however if the GUI is not available this will be the action taken."
L["When loading or creating a sequence, if it is a global or the macro has an unknown specID automatically create the Macro Stub in Account Macros"] = "Ao carregar ou criar uma sequência, se ela for global ou a macro tiver um specID desconhecido, cria automaticamente o Esboço da Macro nas Macros da Conta"
--[[Translation missing --]]
L["When loading or creating a sequence, if it is a macro of the same class automatically create the Macro Stub"] = "When loading or creating a sequence, if it is a macro of the same class automatically create the Macro Stub"
--[[Translation missing --]]
L["When you log into a class without any macros, prompt to load the sample macros."] = "When you log into a class without any macros, prompt to load the sample macros."
L["Yes"] = "Sim"
L["You cannot delete the Default version of this macro.  Please choose another version to be the Default on the Configuration tab."] = "Você não pode apagar a versão Padrão desta macro. Por favor escolha outra versão para ser a versão Padrão na aba Configuração."
--[[Translation missing --]]
L["You cannot delete this version of a sequence.  This version will be reloaded as it is contained in "] = "You cannot delete this version of a sequence.  This version will be reloaded as it is contained in "
L["You need to reload the User Interface for the change in StepFunction to take effect.  Would you like to do this now?"] = "Você precisa recarregar a Interface de Usuário para a mudança na Função de Etapa ter efeito. Gostaria de fazer isso agora?"
--[[Translation missing --]]
L["You need to reload the User Interface to complete this task.  Would you like to do this now?"] = "You need to reload the User Interface to complete this task.  Would you like to do this now?"
--[[Translation missing --]]
L["Your ClassID is "] = "Your ClassID is "
--[[Translation missing --]]
L["Your current Specialisation is "] = "Your current Specialisation is "
--[[Translation missing --]]
L["Your sequence name was longer than 27 characters.  It has been shortened from %s to %s so that your macro will work."] = "Your sequence name was longer than 27 characters.  It has been shortened from %s to %s so that your macro will work."




