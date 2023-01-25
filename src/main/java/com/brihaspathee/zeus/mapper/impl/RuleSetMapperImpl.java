package com.brihaspathee.zeus.mapper.impl;

import com.brihaspathee.zeus.domain.entity.RuleSet;
import com.brihaspathee.zeus.dto.rules.RuleSetDto;
import com.brihaspathee.zeus.mapper.interfaces.RuleMapper;
import com.brihaspathee.zeus.mapper.interfaces.RuleSetMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 10, November 2022
 * Time: 5:37 AM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.mapper.impl
 * To change this template use File | Settings | File and Code Template
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class RuleSetMapperImpl implements RuleSetMapper {

    /**
     * Rule mapper instance to map the rules associated with the rule set
     */
    private final RuleMapper ruleMapper;

    /**
     * Convert rule set entity to rule set dto
     * @param ruleSet
     * @return
     */
    @Override
    public RuleSetDto ruleSetToRuleSetDto(RuleSet ruleSet) {
        if(ruleSet == null){
            return null;
        }
        RuleSetDto ruleSetDto = RuleSetDto.builder()
                .ruleSetId(ruleSet.getRuleSetId())
                .ruleSetName(ruleSet.getRuleSetName())
                .ruleSetDesc(ruleSet.getRuleSetDesc())
                .active(ruleSet.isActive())
                .rules(ruleMapper.rulesToRuleDtos(ruleSet.getRules()))
                .build();
        return ruleSetDto;
    }

    /**
     * Convert Ruleset dto to entity
     * @param ruleSetDto
     * @return
     */
    @Override
    public RuleSet ruleSetDtoToRuleSet(RuleSetDto ruleSetDto) {
        if(ruleSetDto == null){
            return null;
        }
        RuleSet ruleSet = RuleSet.builder()
                .ruleSetId(ruleSetDto.getRuleSetId())
                .ruleSetName(ruleSetDto.getRuleSetName())
                .ruleSetDesc(ruleSetDto.getRuleSetDesc())
                .active(ruleSetDto.isActive())
                .rules(ruleMapper.ruleDtosToRules(ruleSetDto.getRules()))
                .build();
        return ruleSet;
    }

    /**
     * Convert ruleset entities to rule set dtos
     * @param ruleSets
     * @return
     */
    @Override
    public List<RuleSetDto> ruleSetsToRuleSetDtos(List<RuleSet> ruleSets) {
        return ruleSets.stream().map(this::ruleSetToRuleSetDto).collect(Collectors.toList());
    }

    /**
     * Convert rule set dtos to entities
     * @param ruleSetDtos
     * @return
     */
    @Override
    public List<RuleSet> ruleSetDtosToRuleSets(List<RuleSetDto> ruleSetDtos) {
        return ruleSetDtos.stream().map(this::ruleSetDtoToRuleSet).collect(Collectors.toList());
    }
}
