package com.brihaspathee.zeus.domain.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.JdbcTypeCode;

import java.sql.Types;
import java.util.List;
import java.util.UUID;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 17, February 2024
 * Time: 8:19 AM
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
@Table(name = "RULE_TYPE")
public class RuleType {

    /**
     * Primary key of the table
     */
    @Id
    @GeneratedValue(generator = "UUID")
    @JdbcTypeCode(Types.LONGVARCHAR)
    @GenericGenerator(name="UUID", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(name = "rule_type_sk", length = 36, columnDefinition = "varchar", updatable = false, nullable = false)
    private UUID ruleTypeSK;

    /**
     * Unique id of the rule type
     */
    @Column(name = "rule_type_id", length = 50, columnDefinition = "varchar", nullable = false)
    private String ruleTypeId;

    /**
     * The name of the rule type
     */
    @Column(name = "rule_type_name", length = 100, columnDefinition = "varchar", nullable = false)
    private String ruleTypeName;

    /**
     * A short description of the rule type
     */
    @Column(name = "rule_type_desc", length = 50, columnDefinition = "varchar", nullable = false)
    private String ruleTypeDesc;

    /**
     * The category that the rule type belongs to
     */
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "rule_category_sk")
    private RuleCategory ruleCategory;


    /**
     * The rule sets associated with the rule category
     */
    @OneToMany(mappedBy = "ruleType", fetch = FetchType.EAGER)
    private List<RuleSet> ruleSets;
}
