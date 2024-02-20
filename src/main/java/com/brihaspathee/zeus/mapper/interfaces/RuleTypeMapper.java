package com.brihaspathee.zeus.mapper.interfaces;

import com.brihaspathee.zeus.domain.entity.RuleType;
import com.brihaspathee.zeus.dto.rules.RuleTypeDto;

import java.util.List;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 18, February 2024
 * Time: 4:46 PM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.mapper.interfaces
 * To change this template use File | Settings | File and Code Template
 */
public interface RuleTypeMapper {

    /**
     * Convert dto to entity
     * @param ruleTypeDto
     * @return
     */
    RuleType ruleTypeDtoToRuleType(RuleTypeDto ruleTypeDto);

    /**
     * Convert rule type entity to dto
     * @param ruleType
     * @return
     */
    RuleTypeDto ruleTypeToRuleTypeDto(RuleType ruleType);

    /**
     * Convert dtos to entities
     * @param ruleTypeDtos
     * @return
     */
    List<RuleType> ruleTypeDtosToRuleTypes(List<RuleTypeDto> ruleTypeDtos);

    /**
     * Convert entities to dtos
     * @param ruleTypes
     * @return
     */
    List<RuleTypeDto> ruleTypesToRuleTypeDtos(List<RuleType> ruleTypes);
}
