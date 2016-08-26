package ve.gob.cne.sarc.persistencia.repositorios;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import ve.gob.cne.sarc.persistencia.entidades.TipoOficinaEntidad;

/**
 * Clase Repositorio de la entidad TipoOficinaEntidad
 * @author carlos.castillo
 *
 */
public interface TipoOficinaRepository extends CrudRepository<TipoOficinaEntidad, Long>{

	/**
     * @metodo Metodo para buscar un tipo de oficina por su ID
     * @param id ID del tipo de oficina
     * @return TipoOficinaEntidad
     * @author carlos.castillo
     * 
     */
    public TipoOficinaEntidad buscarPorId(@Param("id") String id);

    /**
     * @metodo Metodo para buscar todas los tipos oficinas
     * @param sort
     * @return List<TipoOficinaEntidad>
     * @author carlos.castillo
     */
    List<TipoOficinaEntidad> findAll(Sort sort);
}
