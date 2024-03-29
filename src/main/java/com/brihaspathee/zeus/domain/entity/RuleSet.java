package com.brihaspathee.zeus.domain.entity;

import jakarta.persistence.Table;
import lombok.*;
import org.hibernate.annotations.*;

import jakarta.persistence.*;

import java.sql.Types;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 02, October 2022
 * Time: 4:22 PM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.domain.entity
 * To change this template use File | Settings | File and Code Template
 */
@Getter
@Setter
@Builder
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "RULE_SET")
public class RuleSet {

    /**
     * Primary key of the table
     */
    @Id
    @GeneratedValue(generator = "UUID")
    @JdbcTypeCode(Types.LONGVARCHAR)
    @GenericGenerator(name="UUID", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(name = "rule_set_sk", length = 36, columnDefinition = "varchar", updatable = false, nullable = false)
    private UUID ruleSetSK;

    /**
     * The rule type that the ruleset belongs
     */
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "rule_type_sk")
    private RuleType ruleType;

    /**
     * Unique id that identifies the rule set
     */
    @Column(name = "rule_set_id", length = 50, columnDefinition = "varchar", nullable = false)
    private String ruleSetId;

    /**
     * Name of the rule set
     */
    @Column(name = "rule_set_name", length = 100, columnDefinition = "varchar", nullable = false)
    private String ruleSetName;

    /**
     * A short description of the rule set
     */
    @Column(name = "rule_set_desc", length = 200, columnDefinition = "varchar", nullable = false)
    private String ruleSetDesc;

    /**
     * Indicates if the rule set is active or not
     */
    @Column(name = "active")
    private boolean active;

    /**
     * The rules associated with the rule set
     */
    @OneToMany(mappedBy = "ruleSet", fetch = FetchType.EAGER)
    private List<Rule> rules;

    /**
     * Date when the record was created
     */
    @CreationTimestamp
    @Column(name = "created_date")
    private LocalDateTime createdDate;

    /**
     * Date when the record was updated
     */
    @UpdateTimestamp
    @Column(name = "updated_date")
    private LocalDateTime updatedDate;

}
