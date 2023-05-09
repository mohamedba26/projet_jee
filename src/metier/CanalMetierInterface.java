package metier;

import java.util.List;

public interface CanalMetierInterface {
    public void addCanal(Canal c);

    // Retourner la liste de tous les objets "Canal"
    public List<Canal> listCanaux();
    public List<Canal> listCanaux(String ch);

    // Retourner l'objet "Canal" ayant l'id passé en paramètre
    public Canal getCanalById(int id);

    // Mettre à jour un objet "Canal" déjà existant
    public void updateCanal(Canal c);

    // Supprimer un objet "Canal" identifié par son "id"
    public void deleteCanal(int id);
}
