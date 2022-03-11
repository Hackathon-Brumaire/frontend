import 'package:brumaire_frontend/ui/pages/call_page/signaling.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class ListPeers extends StatefulWidget {
  const ListPeers({Key? key}) : super(key: key);

  @override
  State<ListPeers> createState() => _ListPeersState();
}

class _ListPeersState extends State<ListPeers> {
  Signaling? _signaling;

  List<dynamic> _peers = [];

  @override
  void initState() {
    super.initState();
  }

  _buildPeerRow(context, peer) {
    var loggerNoStack = Logger(
      printer: PrettyPrinter(methodCount: 0),
    );
    var self = (peer['id'] == _selfId);
    return ListBody(children: <Widget>[
      if (!self)
        ListTile(
          title: Text('ID du ${widget.suffix}: ${peer['id']} '),
          onTap: null,
          trailing: SizedBox(
            width: 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  icon: Icon(self ? Icons.close : Icons.videocam,
                      color: self ? Colors.grey : Colors.black),
                  onPressed: () => _invitePeer(context, peer['id']),
                  tooltip: 'Video calling',
                ),
              ],
            ),
          ),
        ),
      const Divider()
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(0.0),
      itemCount: _peers.length,
      itemBuilder: (context, i) {
        return _buildPeerRow(context, _peers[i]);
      },
    );
  }
}
