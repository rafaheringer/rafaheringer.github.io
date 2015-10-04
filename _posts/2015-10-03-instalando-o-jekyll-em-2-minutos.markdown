---
layout: post
title:  "Instalando Jekyll no Windows em 2 minutos"
date:   2015-10-03 21:45:21
categories: jekyll
---

O Jekyll é um gerador de páginas estáticas simples com um grande leque de aplicações. É possível criar desde single pages a partir de [Markdown](http://daringfireball.net/projects/markdown/) até blogs completos utilizando [Liquid](https://github.com/Shopify/liquid/wiki). E, como todos os arquivos gerados são estáticos, não há nenhuma necessidade específica de servidor, podendo até servir para criar páginas para o [Github pages](https://pages.github.com). 

Conheça melhor acessando o [site do projeto](http://jekyllrb.com/). A instalação é simples quando estamos em ambiente Linux ou Mac, bastando instalar a GEM jekyll e funcionará numa boa. O problema é quando precisamos rodar em plataforma Windows.

Depois de muito tempo perdido, encontrei a mais simples combinação de dependências e sem depender do Dev Toolkit do Ruby. Preparei um arquivo ".bat" para automatizar o processo de verificação e instalação das dependências. Você encontra na minha página do Github.

Dependências
-------------------

1. **Ruby >= 2.2** - Há diversos issues reportados para Jekyll e versões anteriores do Ruby. Verifique se possui a última versão executando o comando `gem update --system`.

2. **Hitimes >= 1.2.3** - A dependência hitimes instalada por padrão é a versão 1.2.1, que possui a dependência dos binários do Dev toolkit. A versão 1.2.3 corrige este problema. Para instalar, primeiro é necessário instalar todas as versões atuais utilizando o comando `gem uni hitimes`. Depois, é só instalar a versão correta: `gem ins hitimes -v 1.2.3 --platform ruby`.

3. **Rouge**  - O jekyll utiliza o [Pygments](http://pygments.org/) como opção de syntax highlighter para citações de código. Para funcionar, o Pygments precisa do Python instalado, que já vem por padrão nas distribuições Linux e Mac. No Linux, a instalação não é tão simples e ainda assim o servidor do Jekyll mostrará erros. Então a melhor opção é instalar o Rouge, um syntax highligther mais rápido e simples de instalar. Basta roda o `gem install rouge` para instalar o gem e adicionar a linha `highlighter: rouge` no arquivo `_config.yml` que é criado quando você inicia um site Jekyll. 

Pronto, você conseguirá utilizar normalmente o Jekyll no seu windows. Leia o [Quick Start](http://jekyllrb.com/docs/quickstart/) e começe a criar sua página!
