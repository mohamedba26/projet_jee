package metier;

public class Canal {
	private int idCanal;
	private String nomCanal;
	public int getIdCanal() {
		return idCanal;
	}
	public void setIdCanal(int idCanal) {
		this.idCanal = idCanal;
	}
	public String getNomCanal() {
		return nomCanal;
	}
	public void setNomCanal(String nomCanal) {
		this.nomCanal = nomCanal;
	}
	public Canal(int idCanal, String nomCanal) {
		this.idCanal = idCanal;
		this.nomCanal = nomCanal;
	}
	public Canal() {
	}
}
