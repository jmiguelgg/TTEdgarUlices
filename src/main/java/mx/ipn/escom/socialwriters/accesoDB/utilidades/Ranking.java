package mx.ipn.escom.socialwriters.accesoDB.utilidades;

import java.util.ArrayList;
import java.util.List;

import mx.ipn.escom.socialwriters.accesoDB.mapeo.RankingUsuario;

public class Ranking {
	private List<RankingUsuario> rankea;
	
	public Ranking() {
		rankea = new ArrayList<RankingUsuario>();
	}

	public Ranking(List<RankingUsuario> rankea) {
		super();
		this.rankea = rankea;
	}
	
	public Integer getEstrellas() {
		Integer cumEstrellas,contRank;
		Double promedio;
		
		cumEstrellas = 0;
		contRank = 0;
		promedio = 0.0;
		for (RankingUsuario rankingUsuario : rankea) {
			cumEstrellas += rankingUsuario.getEstrellas();
			contRank++;
		}
		if (!contRank.equals(0)) {
			promedio = (double) (cumEstrellas / contRank);
			return redondeoEntero(promedio);
		}
		else
			return 0;
	}
	
	private Integer redondeoEntero(Double cantidad) {
		Integer enteroConvert,decimalConvert;
		String entero,decimal;
		String cadena[];
		
		entero = "" + cantidad;
		cadena = entero.split(".");
		entero = cadena[0];
		decimal = cadena[1].substring(0, 1);
		
		enteroConvert = Integer.parseInt(entero);
		decimalConvert = Integer.parseInt(decimal);
		
		if (decimalConvert >= 55) {
			enteroConvert++;
		}
		return enteroConvert;
	}
}
