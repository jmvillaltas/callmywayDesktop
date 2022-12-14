/*
 * Copyright (c) 2010-2020 Belledonne Communications SARL.
 *
 * This file is part of linphone-desktop
 * (see https://www.linphone.org).
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef SEARCH_SIP_ADDRESSES_MODEL_H_
#define SEARCH_SIP_ADDRESSES_MODEL_H_

#include <QDateTime>
#include <list>

#include <linphone++/linphone.hh>

#include "SearchListener.hpp"
#include "app/proxyModel/ProxyListModel.hpp"

// =============================================================================

class SearchResultModel;

class SearchSipAddressesModel : public ProxyListModel {
	Q_OBJECT
	
public:
	SearchSipAddressesModel (QObject *parent = Q_NULLPTR);
	~SearchSipAddressesModel();
	
	Q_INVOKABLE void setFilter (const QString &pattern);
	
	// And instance of Magic search
	std::shared_ptr<linphone::MagicSearch> mMagicSearch;
	// Callback when searching
	std::shared_ptr<SearchListener> mSearch;
	
public slots:
	void searchReceived(std::list<std::shared_ptr<linphone::SearchResult>> results);
};

Q_DECLARE_METATYPE(SearchSipAddressesModel *);

#endif // SIP_ADDRESSES_MODEL_H_
