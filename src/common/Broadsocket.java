package common;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint(value = "/broadcasting", configurator = ServletConfig.class, 
						decoders = MessageDecoder.class,
						encoders = MessageEncoder.class)
public class Broadsocket {

	private static Set<Session> clients = Collections
			.synchronizedSet(new HashSet<Session>());
	String userid = "";
	
	public void eventNoticeMEssage(MessageVO message) throws IOException {
		for (Session client : clients) {
			client.getBasicRemote().sendText(message.cmd + ":"+ message.msg);
		}
	}
	
	@OnMessage
	public void onMessage(MessageVO message, Session session) throws IOException {
		System.out.println(userid + " : " + message);
		synchronized (clients) {
			// Iterate over the connected sessions
			// and broadcast the received message
			if(message.cmd.contentEquals("msg")) {
				for (Session client : clients) {
					if (!client.equals(session)) {
						client.getBasicRemote().sendText(message.id + " : " + message.msg);
					}
				}
			} else if ( message.cmd.contentEquals("secret")) {
				
			}
		}
	}

	@OnOpen
	public void onOpen(Session session, EndpointConfig config) {
		// Add session to the connected sessions set
		System.out.println(session);
		clients.add(session);
		
		userid = (String)config.getUserProperties().get("userid");
		System.out.println(userid);
	}

	@OnClose
	public void onClose(Session session) {
		// Remove session from the connected sessions set
		clients.remove(session);
	}
}