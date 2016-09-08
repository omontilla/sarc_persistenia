package ve.gob.cne.sarc.persistencia.entidades;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import ve.gob.cne.sarc.persistencia.disparadores.TipoOficinaDisparador;

/**
 * Se crea la clase TipoOficinaEntidad donde se Realizan los Query de consulta de cada metodo
 *
 * @author carlos.castillo
 */
@Entity
@Table(name = "C006T_TIPO_OFICINA")
@EntityListeners({TipoOficinaDisparador.class})
@NamedQueries({
    @NamedQuery(name = TipoOficinaEntidad.BUSCAR_TODOS, query = "SELECT tof "
            + "FROM   TipoOficinaEntidad tof"),
    @NamedQuery(name = TipoOficinaEntidad.BUSCAR_POR_ID, query = "SELECT tof "
            + "FROM   TipoOficinaEntidad tof WHERE  tof.id = :id")
})
public class TipoOficinaEntidad implements Serializable {

    private static final long serialVersionUID = 1L;

    public static final String BUSCAR_TODOS = "TipoOficinaEntidad.buscarTodos";
    public static final String BUSCAR_POR_ID = "TipoOficinaEntidad.buscarPorId";

    @Id
    @Basic(optional = false)
    @Column(name = "CO_TIPO_OFICINA", nullable = false, length = 22)
    @SequenceGenerator(name = "TIPO_OFICINA_SEQ", sequenceName = "C006S_CO_TIPO_OFICINA", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "TIPO_OFICINA_SEQ")
    private long id;

    @Basic(optional = false)
    @Column(name = "NB_OFICINA", nullable = false, length = 255)
    private String nombre;

    @Basic(optional = true)
    @Column(name = "TX_DESCRIPCION", nullable = true, length = 200)
    private String descripcion;

    @Temporal(TemporalType.DATE)
    @Basic(optional = false)
    @Column(name = "FE_INICIO", nullable = false)
    private Date fechaInicio;

    @Temporal(TemporalType.DATE)
    @Basic(optional = true)
    @Column(name = "FE_FIN", nullable = true)
    private Date fechaFin;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tipoOficina", cascade = {
        CascadeType.PERSIST, CascadeType.MERGE})
    private List<OficinaEntidad> oficinas = new ArrayList<>();

    public TipoOficinaEntidad() {
        // Metodo Constructor
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public Date getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }

    public List<OficinaEntidad> getOficinas() {
        return oficinas;
    }

    public void setOficinas(List<OficinaEntidad> oficinas) {
        this.oficinas = oficinas;
    }

}
