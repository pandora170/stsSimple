package egovframework.com.push;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.google.android.gcm.server.Message;
import com.google.android.gcm.server.MulticastResult;
import com.google.android.gcm.server.Result;
import com.google.android.gcm.server.Sender;

public class GCMPush {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Sender sender = new Sender("AIzaSyBViR58Xs0GV08YqGheREd0l1evL2wJFeE"); // 서버 API Key 입력
		String regId = "APA91bGKMTQJggaaZpZCXKJMN-zwXXEYn0MyyxcDpMhWwGhPb3aK7S3iUzrLZmPYxo_m_7WXpMQMkJVT3T7MB9X0fteNUC2JX9z31WdwPmqBbXWZ7esoYhCQfllVlF5_x-cnJ0KfwBHB"; // 단말기 RegID 입력
		 
		Message message = new Message.Builder().addData("msg", "push notify!!! syh").build();
		List<String> list = new ArrayList<String>();
		list.add(regId);
		MulticastResult multiResult;
		
		try {
			multiResult = sender.send(message, list, 5);
			if (multiResult != null) {
				List<Result> resultList = multiResult.getResults();
				for (Result result : resultList) {
					System.out.println(result.getMessageId());
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
