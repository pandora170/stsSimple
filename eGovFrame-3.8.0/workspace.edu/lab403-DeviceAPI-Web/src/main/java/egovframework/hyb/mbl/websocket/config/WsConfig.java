package egovframework.hyb.mbl.websocket.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

import egovframework.hyb.mbl.websocket.ws.ChatWebSocketHandler;
import egovframework.hyb.mbl.websocket.ws.HandshakeInterceptor;

@Configuration
@EnableWebSocket
@EnableWebMvc
public class WsConfig implements WebSocketConfigurer {

	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {		
		
		System.out.println(">>registerWebSocketHandlers");
		registry.addHandler(chatHandler(), "/sockjs/chat").addInterceptors(new HandshakeInterceptor()).withSockJS();
	}
	
	@Bean
	public ChatWebSocketHandler chatHandler() {
		return new ChatWebSocketHandler();
	}
}
