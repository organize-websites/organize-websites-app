import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'homescreen.dart';
import 'politicaprivacidade.dart';


class ExemploDeAppsEmBreve extends StatefulWidget {
  @override
  _ExemploDeAppsEmBreveState createState() => _ExemploDeAppsEmBreveState();
}

class _ExemploDeAppsEmBreveState extends State<ExemploDeAppsEmBreve> {
  bool isLoading = false;

  @override

      void initState() {
        setState(() {
          isLoading = true;
        });
        super.initState();
      }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},),        
          backgroundColor: Colors.black,
        ),
      body: 
      Container(
        color: Colors.black,
        child: 
        Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Ainda não temos os exemplos por aqui, mas fique a vontade para pedir seu modelo pelo WhatsApp, clique no botão abaixo!', style: TextStyle(color: Colors.white, fontSize: 40), textAlign: TextAlign.center,),
                  ),                  
                ]
              ),
            ),
            Container(
              color: Colors.black,
              height: 80,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 15),
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Color.fromRGBO(234, 85, 15, 1.0)), child: ListTile(leading: Icon(Icons.keyboard_arrow_right, color: Colors.white,), title: Text('Orçamento pelo WhatsApp', style: TextStyle(color: Colors.white),), onTap: _launchURL,),),
                  ),
                ]
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
          child: Container(
            color: Colors.black,
            child: ListView(
              children: [
                DrawerHeader(
                  child: 
                  Center(
                    child: 
                    FlatButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));}, 
                      child: Image.asset('imagens/logo-q.png')
                    ),
                  )
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white,),
                  title: Text('HOME', style: TextStyle(color: Colors.white),),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                ),
                ListTile(
                  leading: Icon(FontAwesome5Brands.whatsapp, color: Colors.white,),
                  title: Text('WHATSAPP', style: TextStyle(color: Colors.white),),
                  onTap: _launchURL
                ),
                ListTile(
                  leading: Icon(FontAwesome5Brands.facebook, color: Colors.white,),
                  title: Text('FACEBOOK', style: TextStyle(color: Colors.white),),
                  onTap: _launchURL2
                ),
                ListTile(
                  leading: Icon(FontAwesome5Brands.instagram, color: Colors.white,),
                  title: Text('INSTAGRAM', style: TextStyle(color: Colors.white),),
                  onTap: _launchURL3
                ),
                ListTile(
                  leading: Icon(FontAwesome.globe, color: Colors.white,),
                  title: Text('NOSSO SITE', style: TextStyle(color: Colors.white),),
                  onTap: _launchURL4
                ),
                ListTile(
                  leading: Icon(Icons.policy, color: Colors.white,),
                  title: Text('POLÍTICA DE PRIVACIDADE', style: TextStyle(color: Colors.white),),
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => PoliticaPrivacidade()));},
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: 
        BottomNavigationBar(
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: 
                IconButton(
                  icon: Icon(Icons.home, color: Colors.white,), 
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));}
                ),
              ) 
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: 
                IconButton(
                  icon: Icon(FontAwesome.globe, color: Colors.white,), 
                  onPressed: _launchURL4
                ),
              ) 
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: 
                IconButton(
                  icon: Icon(Icons.exit_to_app, color: Colors.white,), 
                  onPressed: (){exit(0);},
                ),
              ) 
            ),
          ],
        ),
    );
  }
}

class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture)
      : assert(_webViewControllerFuture != null);

  final Future<WebViewController> _webViewControllerFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.data;
        return Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller.canGoBack()) {
                        await controller.goBack();
                      } else {
                        Scaffold.of(context).showSnackBar(
                          const SnackBar(content: Text("No back history item")),
                        );
                        return;
                      }
                    },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller.canGoForward()) {
                        await controller.goForward();
                      } else {
                        Scaffold.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("No forward history item")),
                        );
                        return;
                      }
                    },
            ),
            IconButton(
              icon: const Icon(Icons.replay),
              onPressed: !webViewReady
                  ? null
                  : () {
                      controller.reload();
                    },
            ),
          ],
        );
      },
    );
  }
}

_launchURL() async {
  const url = 'http://wa.me/5512996315501&text=';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'fb://page/1930496377253551/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = 'instagram://user?username=organize_websites';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'https://organizewebsites.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}