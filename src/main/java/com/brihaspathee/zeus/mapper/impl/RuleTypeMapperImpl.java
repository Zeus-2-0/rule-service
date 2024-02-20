package com.brihaspathee.zeus.mapper.impl;

import com.brihaspathee.zeus.domain.entity.RuleType;
import com.brihaspathee.zeus.dto.rules.RuleTypeDto;
import com.brihaspathee.zeus.mapper.interfaces.RuleSetMapper;
import com.brihaspathee.zeus.mapper.interfaces.RuleTypeMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 18, February 2024
 * Time: 4:49 PM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.mapper.impl
 * To change this template use File | Settings | File and Code Template
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class RuleTypeMapperImpl implements RuleTypeMapper {

    /**
     * Rule set mapper instance to map all the rule sets
     */
    private final RuleSetMapper ruleSetMapper;

    /**
     * Convert dto to entity
     * @param ruleTypeDto
     * @return
     */
    @Override
    public RuleType ruleTypeDtoToRuleType(RuleTypeDto ruleTypeDto) {
        if(ruleTypeDto == null){
            return null;
        }
        return RuleType.builder()
                .ruleTypeId(ruleTypeDto.getRuleTypeId())
                .ruleTypeName(ruleTypeDto.getRuleTypeName())
                .ruleTypeDesc(ruleTypeDto.getRuleTypeDesc())
                .ruleSets(ruleSetMapper.ruleSetDtosToRuleSets(ruleTypeDto.getRuleSets()))
                .build();
    }

    /**
     * Convert entity to dto
     * @param ruleType
     * @return
     */
    @Override
    public RuleTypeDto ruleTypeToRuleTypeDto(RuleType ruleType) {
        if(ruleType == null) {
            return null;
        }
        return RuleTypeDto.builder()
                .ruleTypeId(ruleType.getRuleTypeId())
                .ruleTypeName(ruleType.getRuleTypeName())
                .ruleTypeDesc(ruleType.getRuleTypeDesc())
                .ruleSets(ruleSetMapper.ruleSetsToRuleSetDtos(ruleType.getRuleSets()))
                .build();
    }

    /**
     * Convert dtos to entities
     * @param ruleTypeDtos
     * @return
     */
    @Override
    public List<RuleType> ruleTypeDtosToRuleTypes(List<RuleTypeDto> ruleTypeDtos) {
        return ruleTypeDtos.stream().map(this::ruleTypeDtoToRuleType).toList();
    }

    /**
     * Convert entities to dtos
     * @param ruleTypes
     * @return
     */
    @Override
    public List<RuleTypeDto> ruleTypesToRuleTypeDtos(List<RuleType> ruleTypes) {
        return ruleTypes.stream().map(this::ruleTypeToRuleTypeDto).toList();
    }
}
