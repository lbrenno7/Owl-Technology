package br.com.fafica.projeto.onecore.main;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class hora {

	public static void main(String[] args) {
		
			String data;
			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
			Date date = new Date();
			data = dateFormat.format(date);

			System.out.println(data);
		

	}

}
