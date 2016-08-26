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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import ve.gob.cne.sarc.persistencia.disparadores.OficinaDisparador;

/**
 * Se crea la clase OficinaEntidad donde se Realizan los Query de consulta de cada metodo
 *
 * @author carlos.castillo
 */
@Entity
@Table(name = "C067T_OFICINA")
@EntityListeners({OficinaDisparador.class})
@NamedQueries({
    @NamedQuery(name = OficinaEntidad.BUSCAR_TODOS, query = "SELECT ofi "
            + "FROM   OficinaEntidad ofi"),
    @NamedQuery(name = OficinaEntidad.BUSCAR_POR_ID, query = "SELECT ofi "
            + "FROM   OficinaEntidad ofi WHERE  ofi.id = :id"),
    @NamedQuery(name = OficinaEntidad.BUSCAR_POR_GEOGRAFICO, query = "SELECT ofi "
            + "FROM   OficinaEntidad ofi WHERE  ofi.geografico = :geografico AND ofi.tipoOficina = :tipoOficina"),
})

public class OficinaEntidad implements Serializable {

    public static final String BUSCAR_TODOS = "OficinaEntidad.buscarTodos";
    public static final String BUSCAR_POR_ID = "OficinaEntidad.buscarPorId";
    public static final String BUSCAR_POR_CODIGO = "OficinaEntidad.buscarPorCodigo";
    public static final String BUSCAR_POR_GEOGRAFICO = "OficinaEntidad.buscarPorGeografico";

    @Id
    @Basic(optional = false)
    @Column(name = "CO_OFICINA", nullable = false, length = 22)
    @SequenceGenerator(name = "OFICINA_SEQ", sequenceName = "C067S_CO_OFICINA", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "OFICINA_SEQ")
    private long id;

    @Basic(optional = false)
    @Column(name = "NB_OFICINA", nullable = false, length = 50)
    private String nombre;

    @Temporal(TemporalType.DATE)
    @Basic(optional = false)
    @Column(name = "FE_INICIO", nullable = false)
    private Date fechaInicio;

    @Temporal(TemporalType.DATE)
    @Basic(optional = true)
    @Column(name = "FE_FIN", nullable = true)
    private Date fechaFin;

    @Basic(optional = true)
    @Column(name = "NU_GACETA", nullable = true, length = 20)
    private int numero;

    @Temporal(TemporalType.DATE)
    @Basic(optional = true)
    @Column(name = "FE_GACETA", nullable = true)
    private Date fechaGaceta;

    @Basic(optional = false)
    @Column(name = "DI_UBICACION", nullable = false, length = 500)
    private String direccion;

    @Basic(optional = true)
    @Column(name = "TX_DESCRIPCION", nullable = true, length = 500)
    private String descripcion;

    @Basic(optional = false)
    @Column(name = "CO_GEOGRAFICO", unique = true, nullable = false)
    private int geografico;

    @ManyToOne(optional = false)
    @JoinColumn(name = "CO_TIPO_OFICINA", referencedColumnName = "CO_TIPO_OFICINA", nullable = false)
    private TipoOficinaEntidad tipoOficina;

    @ManyToOne(optional = true)
    @JoinColumn(name = "CO_OFICINADEPENDE",
            referencedColumnName = "CO_OFICINA", nullable = true,
            insertable = false, updatable = false)
    private OficinaEntidad oficina;

    @Basic(optional = true)
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "oficina",
            cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    private List<OficinaEntidad> oficinaDepende = new ArrayList<>();

    public OficinaEntidad() {
        // Metodo Constructor
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public TipoOficinaEntidad getTipoOficina() {
        return tipoOficina;
    }

    public void setTipoOficina(TipoOficinaEntidad tipoOficina) {
        this.tipoOficina = tipoOficina;
    }

    public OficinaEntidad getOficina() {
        return oficina;
    }

    public void setOficina(OficinaEntidad oficina) {
        this.oficina = oficina;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
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

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public Date getFechaGaceta() {
        return fechaGaceta;
    }

    public void setFechaGaceta(Date fechaGaceta) {
        this.fechaGaceta = fechaGaceta;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public List<OficinaEntidad> getOficinaDepende() {
        return oficinaDepende;
    }

    public void setOficinaDepende(List<OficinaEntidad> oficinaDepende) {
        this.oficinaDepende = oficinaDepende;
    }

}
