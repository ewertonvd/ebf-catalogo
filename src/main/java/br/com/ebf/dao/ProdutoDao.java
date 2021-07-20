package br.com.ebf.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.caelum.vraptor.Result;
import br.com.ebf.modelo.EbfmesProduto;

@RequestScoped
public class ProdutoDao {

	private EntityManager manager;

	@Inject
	public ProdutoDao(EntityManager manager) {
		this.manager = manager;
	}

	// PARA USO DO CDI
	public ProdutoDao() {
	}

	/*****************************************************************************************************/

	public EbfmesProduto carregaProduto(String codigoProduto, Result result) {
		EbfmesProduto ebfmesProduto = this.buscaProduto(codigoProduto);
		return ebfmesProduto;
	}

	/*****************************************************************************************************/

	public EbfmesProduto buscaProduto(String codigoProduto) {
		try {
			TypedQuery<EbfmesProduto> query = manager
					.createQuery("Select p from Ebfmes.Produto p Where p.codigoProduto =:codigoProduto", EbfmesProduto.class);
			query.setParameter("codigoProduto", codigoProduto);
			return query.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}

	/*****************************************************************************************************/
	
	public List<EbfmesProduto> listaVaz(Integer tipoProduto1, Integer tipoProduto2, Integer tipoProduto3, 
			                            Integer tipoProduto4, Integer tipoProduto5, Integer tipoProduto6,
			                            Integer tipoProduto7, Integer tipoProduto8, Integer tipoProduto9) {
		try {
			TypedQuery<EbfmesProduto> query = manager.createQuery("Select p from Ebfmes.Produto p "
                                                                + "Where p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto1 or "
                                                                +       "p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto2 or "
                                                                +       "p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto3 or "
                                                                +       "p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto4 or "
                                                                +       "p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto5 or "
                                                                +       "p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto6 or "
                                                                +       "p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto7 or "
                                                                +       "p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto8 or "
                                                                +       "p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto9"
                                                                , EbfmesProduto.class);
			query.setParameter("tipoProduto1", tipoProduto1);
			query.setParameter("tipoProduto2", tipoProduto2);
			query.setParameter("tipoProduto3", tipoProduto3);
			query.setParameter("tipoProduto4", tipoProduto4);
			query.setParameter("tipoProduto5", tipoProduto5);
			query.setParameter("tipoProduto6", tipoProduto6);
			query.setParameter("tipoProduto7", tipoProduto7);
			query.setParameter("tipoProduto8", tipoProduto8);
			query.setParameter("tipoProduto9", tipoProduto9);
			
			query.setFirstResult(0);
			query.setMaxResults(50);
			
			return query.getResultList();
			
		} catch (Exception e) {
			return null;
		}
	}

	public List<EbfmesProduto> listaEco(Integer tipoProduto1) {
		try {
			TypedQuery<EbfmesProduto> query = manager.createQuery("Select p from Ebfmes.Produto p "
                                    + "Where p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto1"
                                    , EbfmesProduto.class);
			
			query.setParameter("tipoProduto", tipoProduto1);

			return query.getResultList();
			
			} catch (Exception e) {
				return null;
			}
	}

	public List<EbfmesProduto> listaVazCap(Integer tipoProduto1, Integer tipoProduto2, Integer tipoProduto3, Integer tipoProduto4) {
		try {
			TypedQuery<EbfmesProduto> query = manager.createQuery("Select p from Ebfmes.Produto p "
                    											+ "Where p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto1 or "
                                                                      + "p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto2 or "
                                                                      + "p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto3 or "
                                                                      + "p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto4"
					                                                  , EbfmesProduto.class);
			query.setParameter("tipoProduto1", tipoProduto1);
			query.setParameter("tipoProduto2", tipoProduto2);
			query.setParameter("tipoProduto3", tipoProduto3);
			query.setParameter("tipoProduto4", tipoProduto4);
			
			query.setFirstResult(0);
			query.setMaxResults(100);

			return query.getResultList();
			
		} catch (Exception e) {
			return null;
		}		
	}

	public List<EbfmesProduto> listaKitVaz(Integer tipoProduto1, Integer tipoProduto2) {
		try {
			TypedQuery<EbfmesProduto> query = manager.createQuery("Select p from Ebfmes.Produto p "
					                                            + "Where p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto1 or "
					                                                  + "p.ebfmesTipoProduto.codigoTipoProduto =:tipoProduto2", EbfmesProduto.class);
			query.setParameter("tipoProduto1", tipoProduto1);
			query.setParameter("tipoProduto2", tipoProduto2);
			
			query.setFirstResult(0);
			query.setMaxResults(100);
			
			return query.getResultList();
			
		} catch (Exception e) {
			return null;
		}		
	}
}