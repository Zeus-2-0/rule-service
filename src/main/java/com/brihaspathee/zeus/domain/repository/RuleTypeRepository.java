package com.brihaspathee.zeus.domain.repository;

import com.brihaspathee.zeus.domain.entity.RuleType;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 18, February 2024
 * Time: 4:44 PM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.domain.repository
 * To change this template use File | Settings | File and Code Template
 */
public interface RuleTypeRepository extends JpaRepository<RuleType, UUID> {
}
