<p align="center">
  <img src="https://cdn-images-1.medium.com/max/1600/1*HOSTZ7HFBYsLhYlIe1JH2w@2x.jpeg">
</p>

* É uma linguagem Brasileira. :)

* Foi desenvolvida pelo brasileiro José Valim, o mesmo é um dos membros do rails core team e co-founder da plataformatec.

* Em 2010 José Valim teve um problema de saúde, LER (leção por esforço repetitivo), então nessa época ele resolveu se dedicar a estudos, já que ele não poderia ficar programando tanto. Pra isso ele resolveu ler o livro Seven Languages in Seven Weeks, no livro tinha as linguages como: Ruby, IO, Prolog, Scala, Erlang, Clojure, Haskell. O que mais chamou anteção dele foi o Elarng, Valim percebeu que os novos desenvolvedores não iram gostar muito da sintaxe do Erlang então decidiu dar uma roupagem nova criando o Elixir trazendo boas ideias do Ruby, Python, C#. Em Janeiro de 2011 tivemos o primeiro commit do Elixir (https://github.com/elixir-lang/elixir/commit/337c3f2d569a42ebd5fcab6fef18c5e012f9be5b). Elixir é uma linguagem dinâmica e funcional, contruida para contruir aplicações escaláveis e manuteníveis.

* Funcional: Isso siginifica que os dados são imutáveis, isso facilita a concorrência pois ela é tolerante a falhas, pois não existe quebras nos dados.

* Tolerante a falhas: Como os dados são imutáveis, isso faz com que não exista quebra de dados e caso ocorra algum erro, existem os supervisors que garantem que aquele processo isolado será reiniciado a partir do ponto de quebra.

* Concorrência nativa, processs/actor model, são como threads menores que se comunicam por mensagem (mailbox) dentro da VM BEAN, cada processo não compartilha recursos pois cada processo tem o seu proprio recurso (http://images.slideplayer.com/9/2498272/slides/slide_5.jpg)

* Elixir trouxe mais poder para o Erlang, pois trouxe um conjuto de ferramentas para o desenvolvedor ficar mais produtivo: Mix, Hex (212MI downloads), Iex (Interpretador).

* Quem ta usando? 

	* [x] https://elixir-companies.com/
	* [x] https://www.netguru.co/blog/10-companies-use-elixir

* Comunidades: 

	* [x] http://elixir-slackin.herokuapp.com/
	* [x] https://www.meetup.com/elug_sp/
	* [x] http://plataformatec.com.br/elixir-radar
	* [x] https://elixirforum.com/

* Jobs: 

	* [x] https://elixir.career/

* Pacotes

	* [x] https://hex.pm/ (212MI downloads)

* Desvantagens

	* Muitas libs você vai ter que fazer na mão
	* CPU Intensive: Se você tiver que fazer uma app que tenha muito calculo número não é legal.
	* Ecosistema pequeno
	* Mudança de paradigma

## Elixir/Talks

* PORQUE ELIXIR ?

	* [x] https://www.youtube.com/watch?v=j_QWqs5gL3E 

* Elixir, quem é esse pokemon? - Bruno Volcov

	* [x] https://www.youtube.com/watch?v=aA-XHI-EYcM (29m:50s)

* Castálio Podcast - Episódio 103: Linguagem Elixir com Guilherme Nogueira e Renan Ranelli

	* [x] https://www.youtube.com/watch?v=YSQmIciT0xE (1h:28m)

* Concorrência (e Elixir): o que isso muda pra você? por George Guimarães - Rupy Campinas 2016 
	
	* [x] https://www.youtube.com/watch?v=MeCfWtMSWTE) (55m:00)

* Existe vida além do OO por Renan Ranelli - DevInSantos 2015 

	* [x] https://www.youtube.com/watch?v=njAMVB02Ag0 (52m:12s)

* The Elixir of Life por Fabio Akita - DevInSantos 2015 

	* [x] https://www.youtube.com/watch?v=8Ng6TfAj7Sk (1h:00m)

* Guru-SP 39: Do Ruby para o Elixir. E agora? por Renan Ranelli 

	* [x] https://www.youtube.com/watch?v=dQPGk6h59zs (58m:46s)

## Elixir/Functional Programming

- [x] https://www.youtube.com/watch?v=GxnbUqPwuKw&t=9s (23m:17s)
- [x] https://www.youtube.com/watch?v=dqg1lgYERHY (23m:54s)
- [x] https://www.youtube.com/watch?v=7eYA8c8yABU (3h:39m)
- https://becoming-functional.com/a-brief-history-of-programming-c13d87b79337
- http://blog.noredink.com/post/142689001488/the-most-object-oriented-language

## Elixir/Processs (Actor Model)

- https://blog.codeship.com/concurrency-in-elixir/
- https://crypt.codemancers.com/posts/2016-01-24-understanding-exit-signals-in-erlang-slash-elixir/
- https://www.tutorialspoint.com/elixir/elixir_processes.htm
- https://medium.com/elixirlabs/anatomy-of-an-elixir-process-878030c37166
- http://www.akitaonrails.com/2015/11/22/observing-processes-in-elixir-the-little-elixir-otp-guidebook
- https://medium.com/elixirlabs/visualisation-of-elixir-supervision-tree-strategies-4d4cb8123138
- https://github.com/krestenkrab/erlubi (Process Visualizer)
- http://holsee.github.io/elixirconfeu-elixir-procs-in-3d/

### spawn

- [x] https://elixir-lang.org/getting-started/processes.html#spawn
- [x] http://eddwardo.github.io/elixir/2015/10/22/elixir-pingpong-table/

### agents

- [x] https://elixirschool.com/en/lessons/advanced/concurrency/

- [x] http://www.culttt.com/2016/07/11/working-processes-elixir/
- [x] https://cdn-images-1.medium.com/max/1600/1*9C_glQ0Nf4WIJKsfpnuiYA.png
- http://blog.songsaboutsnow.com/elixir/processes/2016/04/06/intro-to-elixir-processes.html
- http://www.quentinthomas.com/automated-solutions-blog/2016/3/8/91n5rjioq4u9e6t88hpwlmiomolaqr
- http://blog.noredink.com/post/141444822213/pubsub-in-30-lines-of-elixir

- https://www.brianstorti.com/process-registry-in-elixir/

## Elixir/Traning

- https://elixir-examples.github.io/
- https://github.com/benjamintanweihao/the-little-elixir-otp-guidebook-code
- https://elixirschool.com/en/

## Elixir/Tutorial

- https://m.alphasights.com/simple-web-servers-with-plug-and-cowboy-34f7a174f252
- http://tech.strofcon.org/2016/03/lets-build-elixir-part-1.html
- https://trydis.github.io/2016/03/07/elixir-string-calculator/
- http://trivelop.de/2018/03/26/flow-elixir-using-plug-like-token/
- https://www.brianstorti.com/getting-started-with-plug-elixir/
- [x] https://medium.com/@joaomdmoura/learn-elixir-with-a-rubyist-episode-i-20bc96a7861f

## Elixir/Mix

- https://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html

## Elixir/Hex

- https://yos.io/2016/04/28/writing-and-publishing-elixir-libraries/
- https://www.amberbit.com/blog/2016/5/10/creating-elixir-libraries-as-otp-applications/

## Elixir/Features/Upload

- http://learningelixir.joekain.com/elixir-arc-with-a-single-module/

## Elixir/Features/Debug

- http://blog.plataformatec.com.br/2016/04/debugging-techniques-in-elixir-lang
- http://blog.plataformatec.com.br/2016/04/how-to-trace-elixir-nodes-with-erlyberly/

## Elixir/Features/Measuring

- http://milhouseonsoftware.com/2016/05/08/measuring-your-elixir-application/

## Elixir/Features/Deploy

- http://elviovicosa.com/blog/2016/07/13/deploying-elixir-releases.html
- https://subvisual.co/blog/posts/137-tutorial-deploying-elixir-applications-with-docker-and-digital-ocean/
- https://orestis.gr/live-debugging-an-elixir-memory-process-leak/

## Elixir/Features/Security

- http://ezgr.net/increasing-security-erlang-ssl-cowboy/

## Elixir/Features/Upload

- http://learningelixir.joekain.com/elixir-arc-with-a-single-module/

## Elixir/Ruby

- http://cloudless.studio/articles/17-elixir-vs-ruby-naming-conventions
- https://www.amberbit.com/blog/2016/2/24/how-elixirs-ecto-differs-from-rubys-activerecord/

## Elixir/Others

- https://github.com/h4cc/awesome-elixir
- https://yos.io/2016/03/26/type-checking-in-elixir/