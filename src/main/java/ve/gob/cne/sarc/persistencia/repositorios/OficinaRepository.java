package ve.gob.cne.sarc.persistencia.repositorios;

import java.util.List;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import ve.gob.cne.sarc.persistencia.entidades.OficinaEntidad;
import ve.gob.cne.sarc.persistencia.entidades.TipoOficinaEntidad;

/**
 * Clase Repositorio de la entidad OficinaEntidad
 *
 * @author carlos.castillo
 *
 */
public interface OficinaRepository extends CrudRepository<OficinaEntidad, Long> {

    /**
     * @Metodo Metodo para buscar una oficina por el ID geofrafico
     * @param geografico el ID del geografico
     * @return OficinaEntidad
     * @author carlos.castillo
     */
    public List<OficinaEntidad> buscarPorGeografico(@Param("ambito") int ambito, @Param("tipoOficina") TipoOficinaEntidad tipoOficina);

    /**
     * @Metodo Metodo para buscar una oficina por su ID
     * @param id ID de la oficina
     * @return OficinaEntidad
     * @author carlos.castillo
     *
     */
    public OficinaEntidad buscarPorId(@Param("id") String id);

    /**
     * @Metodo Metodo para buscar todas las oficinas
     * @param sort
     * @return List<OficinaEntidad>
     * @author carlos.castillo
     */
    List<OficinaEntidad> findAll(Sort sort);
}
