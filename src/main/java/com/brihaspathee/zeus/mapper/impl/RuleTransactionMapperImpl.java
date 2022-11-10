package com.brihaspathee.zeus.mapper.impl;

import com.brihaspathee.zeus.domain.entity.RuleTransaction;
import com.brihaspathee.zeus.dto.rules.RuleTransactionDto;
import com.brihaspathee.zeus.mapper.interfaces.RuleTransactionMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 10, November 2022
 * Time: 4:17 AM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.mapper.impl
 * To change this template use File | Settings | File and Code Template
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class RuleTransactionMapperImpl implements RuleTransactionMapper {

    /**
     * Convert rule transaction entity to dto
     * @param ruleTransaction
     * @return
     */
    @Override
    public RuleTransactionDto ruleTransactionToRuleTransactionDto(RuleTransaction ruleTransaction) {
        if(ruleTransaction == null)
        {
            return null;
        }
        RuleTransactionDto ruleTransactionDto = RuleTransactionDto.builder()
                .transactionTypeCode(ruleTransaction.getTransactionTypeCode())
                .build();
        return ruleTransactionDto;
    }

    /**
     * Convert rule transaction dto to entity
     * @param ruleTransactionDto
     * @return
     */
    @Override
    public RuleTransaction ruleTransactionDtoToRuleTransaction(RuleTransactionDto ruleTransactionDto) {
        if(ruleTransactionDto == null){
            return null;
        }
        RuleTransaction ruleTransaction = RuleTransaction.builder()
                .transactionTypeCode(ruleTransactionDto.getTransactionTypeCode())
                .build();
        return ruleTransaction;
    }

    /**
     * Convert rule transaction entities to dtos
     * @param ruleTransactions
     * @return
     */
    @Override
    public List<RuleTransactionDto> ruleTransactionsToRuleTransactionDtos(List<RuleTransaction> ruleTransactions) {
        return ruleTransactions.stream().map(this::ruleTransactionToRuleTransactionDto).collect(Collectors.toList());
    }

    /**
     * Convert rule transaction dtos to entities
     * @param ruleTransactionDtos
     * @return
     */
    @Override
    public List<RuleTransaction> ruleTransactionDtosToRuleTransactions(List<RuleTransactionDto> ruleTransactionDtos) {
        return ruleTransactionDtos.stream().map(this::ruleTransactionDtoToRuleTransaction).collect(Collectors.toList());
    }
}
