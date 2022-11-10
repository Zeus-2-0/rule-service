package com.brihaspathee.zeus.mapper.interfaces;

import com.brihaspathee.zeus.domain.entity.RuleTransaction;
import com.brihaspathee.zeus.dto.rules.RuleTransactionDto;

import java.util.List;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 10, November 2022
 * Time: 3:45 AM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.mapper.interfaces
 * To change this template use File | Settings | File and Code Template
 */
public interface RuleTransactionMapper {

    /**
     * Convert rule transaction entity to dto
     * @param ruleTransaction
     * @return
     */
    RuleTransactionDto ruleTransactionToRuleTransactionDto(RuleTransaction ruleTransaction);

    /**
     * Convert rule transaction dto to entity
     * @param ruleTransactionDto
     * @return
     */
    RuleTransaction ruleTransactionDtoToRuleTransaction(RuleTransactionDto ruleTransactionDto);

    /**
     * Convert rule transaction entities to dtos
     * @param ruleTransactions
     * @return
     */
    List<RuleTransactionDto> ruleTransactionsToRuleTransactionDtos(List<RuleTransaction> ruleTransactions);

    /**
     * Convert rule transaction dtos to entities
     * @param ruleTransactionDtos
     * @return
     */
    List<RuleTransaction> ruleTransactionDtosToRuleTransactions(List<RuleTransactionDto> ruleTransactionDtos);
}
