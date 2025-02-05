package higuita.natalia.pruebatecnica.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.sql.Time;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "TBL_ACTIVITIES")
@Data
public class Activity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ACTIVITY_ID")
    private Long activityId;

    @Column(name = "DATE")
    private Date date;

    @Column(name = "ACTIVITY_TYPE")
    private String activityType;

    @Column(name = "SUPPLIES")
    private String supplies;

    @Column(name = "DURATION")
    private Time duration;

    @ManyToMany(cascade = CascadeType.REMOVE)
    @JoinTable(
            name = "TBL_FIELD_ACTIVITIES",
            joinColumns = @JoinColumn(name = "ACTIVITY_ID", referencedColumnName = "ACTIVITY_ID"),
            inverseJoinColumns = @JoinColumn(name = "FIELD_ID", referencedColumnName = "FIELD_ID")
    )
    private List<Field> fields;


    public Long getActivityId() {
        return activityId;
    }

    public void setActivityId(Long activityId) {
        this.activityId = activityId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getActivityType() {
        return activityType;
    }

    public void setActivityType(String activityType) {
        this.activityType = activityType;
    }

    public String getSupplies() {
        return supplies;
    }

    public void setSupplies(String supplies) {
        this.supplies = supplies;
    }

    public Time getDuration() {
        return duration;
    }

    public void setDuration(Time duration) {
        this.duration = duration;
    }

    public List<Field> getFields() {
        return fields;
    }

    public void setFields(List<Field> fields) {
        this.fields = fields;
    }
}
